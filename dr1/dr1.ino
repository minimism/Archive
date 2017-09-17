#include "calc.h"
#define NUM_OSCS (2)

// Base-timer is running at 8MHz
#define F_TIM (8000000L)

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
  volatile uint8_t  *outputReg;
  // This means that we want to have an indexer with 10 bits of integer
  // and 'some' bits of fraction. Not sure whether 6 is enough, but we'll
  // start with that.
  uint16_t    phase;
  uint16_t    adcVal;
  uint16_t    muxVal;
} oscStructDyn;

oscStructDyn osc[NUM_OSCS];

void setup()
{
  PLLCSR |= _BV(PLLE);                // Enable 64 MHz PLL
  delayMicroseconds(100);             // Stabilize
  while (!(PLLCSR & _BV(PLOCK)));     // Wait for it...
  PLLCSR |= _BV(PCKE);                // Timer1 source = PLL

  osc[0].outputReg = &OCR0A;                // Physical pin 5
  osc[0].muxVal =   _BV(MUX1);              // ADC2 Physical pin 3
  osc[1].outputReg = &OCR0B;                // Physical pin 6
  osc[1].muxVal =   _BV(MUX1) | _BV(MUX0);  // ADC3 Physical pin 2

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
  OCR0A = 127; // 50% duty cycle to start with
  // digital out for PWM output A (chip pin 5)
  pinMode(PB0, OUTPUT);
  // digital out for PWM output B (chip pin 6)
  pinMode(PB1, OUTPUT);

  ///////////////////////////////////////////////
  // Set up the ADC
  ADMUX  = osc[0].muxVal;           // select the mux for osc 0
  ADCSRA = _BV(ADEN) |_BV(ADSC);    // enable the ADC and start a conversion
  DIDR0 = _BV(ADC3D) | _BV(ADC2D);  // disable digital pin attached to ADC 2 & 3
  // read from analogue on (chip pin 2)
  pinMode(A3, INPUT);
  // read from analogue on (chip pin 3)
  pinMode(A2, INPUT);
}

void loop() {
  // nothing to do here, it's all run from the timer interrupt
}

// deal with multiple oscillators, straight-line code
ISR(TIMER1_COMPA_vect)
{
  static uint8_t oscNum=0;                  // declared as static to limit variable scope
  oscStructDyn* currentOsc=&osc[oscNum];    // grab us a pointer to the currently-active oscillator info

  // use locals for readability. If the compiler's any good, these'll be elided anyway.
  uint8_t octave;
  uint8_t note;
  
  // Read the freshly-converted value from the ADC
  currentOsc->adcVal = ADCL|(ADCH << 8);
  ADCSRA = 0;   // stop the converter

  octave = 1 << (currentOsc->adcVal >> 7);  // 3-bits of octave range (1-8)
  note = currentOsc->adcVal & NOTEMASK;     // 7 bits of note-range (128 steps in an octave here)

  // look up the output-value based on the current phase counter (rounded)
  *currentOsc->outputReg = pgm_read_byte(&wave[(currentOsc->phase+0x20) >> 6]);
  // increment the phase counter for next time round
  currentOsc->phase += octave * (pgm_read_byte(&octaveLookup[note]));

  // next time we're dealing with a different oscillator; calculate which one:
  oscNum++;
  oscNum %= NUM_OSCS;

  // Start the ADC off again, this time for the next oscillator
  ADMUX  = osc[oscNum].muxVal; // select the correct channel for the next conversion
  ADCSRA = _BV(ADEN) |_BV(ADSC);
}

