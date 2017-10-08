#include "calc.h"
#define NUM_OSCS (2)
#define NUM_ADCS (4)

// Base-timer is running at 8MHz
#define F_TIM (8000000L)

// Fixed value to start the ADC
// enable ADC, start conversion, prescaler = /32 gives us an ADC clock of 8MHz/32 (250kHz)
#define ADCSRAVAL ( _BV(ADEN) | _BV(ADSC) | _BV(ADPS2) | _BV(ADIE) )

// Remember(!) the input clock is 64MHz, therefore all rates
// are relative to that.
// let the preprocessor calculate the various register values 'coz
// they don't change after compile time
#if ((F_TIM/(SRATE*NUM_OSCS)) < 255)
#define T1_MATCH ((F_TIM/(SRATE*NUM_OSCS))-1)
#define T1_PRESCALE (_BV(CS12))  //prescaler clk/8 (i.e. 8MHz)
#else
#define T1_MATCH (((F_TIM/8L)/(SRATE*NUM_OSCS))-1)
#define T1_PRESCALE (_BV(CS12) | _BV(CS11) | _BV(CS10))  //prescaler clk/64 (i.e. 1MHz)
#endif

typedef struct {
  volatile uint8_t  *outputReg; // which PWM register will this oscillator use?
  const uint8_t     *wave;      // which wavetable will this oscillator use?
  uint16_t          phase;      // The accumulated phase (distance through the wavetable)
  uint16_t          pi;         // current phase increment (how much phase will increase per sample)
} oscStructDyn;

oscStructDyn osc[NUM_OSCS];

void setup()
{
  PLLCSR |= _BV(PLLE);                // Enable 64 MHz PLL
  delayMicroseconds(100);             // Stabilize
  while (!(PLLCSR & _BV(PLOCK)));     // Wait for it...
  PLLCSR |= _BV(PCKE);                // Timer1 source = PLL

  osc[0].outputReg = &OCR0A;                // Physical pin 5
  osc[0].wave = sine;
  osc[1].outputReg = &OCR0B;                // Physical pin 6
  osc[1].wave = sine;

  ///////////////////////////////////////////////
  // Set up Timer1 for the sample-update ISR since we want to
  // use the dual compare-registers on Timer0 for the dual
  // oscillator outputs (fast PWM)
  TCCR1 = 0;                  // stop the timer
  TCNT1 = 0;                  // zero the timer
  GTCCR = _BV(PSR1);          // reset the prescaler
  TIMSK = _BV(OCIE1A);        // interrupt on Compare Match A
  OCR1A = T1_MATCH;           // set when the ISR will fire
  OCR1C = T1_MATCH;           // we want the counter to clear when we match
  //start timer, ctc mode, prescaler set
  TCCR1 = _BV(CTC1) | T1_PRESCALE;

  ///////////////////////////////////////////////
  // Set up Timer/Counter0 for dual PWM output
  TCCR0A = _BV(WGM00) | _BV(WGM01) | _BV(COM0A1) | _BV(COM0B1); // non-inverting mode, Fast PWM (full range)
  TCCR0B = _BV(CS00); // No prescaler
  // digital out for PWM output A (chip pin 5)
  pinMode(PB0, OUTPUT);
  // digital out for PWM output B (chip pin 6)
  pinMode(PB1, OUTPUT);

  ///////////////////////////////////////////////
  // Set up the ADC
  // read from analogue on (chip pin 2)
  pinMode(A3, INPUT);
  // read from analogue on (chip pin 3)
  pinMode(A2, INPUT);
  DIDR0 = _BV(ADC3D) | _BV(ADC2D);  // disable digital pin attached to ADC 2 & 3
  ADMUX  = 0;                       // select the mux for ADC0
  ADCSRA = ADCSRAVAL;               // enable the ADC, set prescaler and start a conversion
}

void loop() {
  // nothing to do here, it's all run from the timer interrupt
}
#if 0
// See http://doitwireless.com/2014/06/26/8-bit-pseudo-random-number-generator/
uint8_t rnd()
{
  static uint8_t r = 0x23;
  uint8_t lsb = r & 1;
  r >>= 1;
  r ^= (-lsb) & 0xB8;
  return r;
}
#endif

ISR(ADC_vect)
{
  static uint8_t adcNum=0;              // declared as static to limit variable scope
  uint16_t  adcVal = ADCL|(ADCH << 8);   // Read the freshly-converted value from the ADC
  switch(adcNum)
  {
    case 0: // reduced range ~ 512-1023
      if (adcVal > 768)
        osc[1].wave = ramp;
      else
        osc[1].wave = sine;
      break;
    case 1:
      break;
    case 2:
    case 3:
      osc[adcNum-2].pi = pgm_read_word(&octaveLookup[adcVal]);
      break;
  }
  

  // next time we're dealing with a different channel; calculate which one:
  adcNum++;
  adcNum %= NUM_ADCS;

  // Start the ADC off again, this time for the next oscillator
  // it turns out that simply setting the MUX to the ADC number (0-3)
  // will select that channel, as long as you don't want to set any other bits
  // in ADMUX of course. Still, that's simple to do if you need to.
  ADMUX  = adcNum;      // select the correct channel for the next conversion
  ADCSRA |= _BV(ADSC);  // ADCSRAVAL;
}


// deal with multiple oscillators, straight-line code
ISR(TIMER1_COMPA_vect)
{
  static uint8_t oscNum=0;                  // declared as static to limit variable scope
  oscStructDyn* currentOsc=&osc[oscNum];    // grab a pointer to the currently-active oscillator info

  // increment the phase counter
  currentOsc->phase += currentOsc->pi;

  // look up the output-value based on the current phase counter (rounded)
  *currentOsc->outputReg = pgm_read_byte(&currentOsc->wave[(currentOsc->phase+HALF) >> FRACBITS]);

  // next time we're dealing with a different oscillator; calculate which one:
  oscNum = 1-oscNum;
}

