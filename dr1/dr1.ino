#include "calc.h"
#define ADC_CHANS (2)

// This means that we want to have an indexer with 10 bits of integer
// and 'some' bits of fraction. Not sure whether 6 is enough, but we'll
// start with that.
unsigned short idx = 0;
unsigned short idx2 = 0;

#define F_TIM (8000000L)

// Remember(!) the input clock is 64MHz, therefore all rates
// are relative to that.
#if ((F_TIM/(SRATE*ADC_CHANS)) < 255)
#define T1_MATCH ((F_TIM/(SRATE*ADC_CHANS))-1)
#define T1_PRESCALE (_BV(CS12))  //prescaler clk/8 (i.e. 8MHz)
#else
#define T1_MATCH (((F_TIM/8L)/(SRATE*ADC_CHANS))-1)
#define T1_PRESCALE (_BV(CS12) | _BV(CS11) | _BV(CS10))  //prescaler clk/64 (i.e. 1MHz)
#endif

unsigned char muxVals[4] = {  _BV(MUX1),               // mux: ADC2
                              _BV(MUX1) | _BV(MUX0),   // mux: ADC3
                              _BV(MUX0),               // mux: ADC1
                              0,                       // mux: ADC0
                            };

unsigned short adcVals[4];

void setup()
{
  PLLCSR |= _BV(PLLE);               // Enable 64 MHz PLL
  delayMicroseconds(100);            // Stabilize
  while (!(PLLCSR & _BV(PLOCK)));    // Wait for it...
  PLLCSR |= _BV(PCKE);               // Timer1 source = PLL

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
  // Set up the ADC (A3 for starters)
  ADMUX  = muxVals[0];
  ADCSRA = _BV(ADEN) |_BV(ADSC);  // enable the ADC and start a conversion
  DIDR0 = _BV(ADC3D);             // disable digital pin attached to ADC3
  // read from analogue on (chip pin 2)
  pinMode(A3, INPUT);
  // read from analogue on (chip pin 3)
  pinMode(A2, INPUT);
}

unsigned char octave;
unsigned char note;
unsigned char octave2;
unsigned char note2;

void loop() {
}

unsigned char adc_read=0;

ISR(TIMER1_COMPA_vect)
{
  // look up the wave based on our (rounded) index, and 
  // PWM with the 'integer' part,
  unsigned short oldIdx = idx;
  adcVals[adc_read] = ADCL|(ADCH << 8);
  ADCSRA = 0;   // stop the converter

  adc_read++;
  adc_read %= ADC_CHANS;
  
  // Start the ADC off again
  ADMUX  = muxVals[adc_read];
  ADCSRA = _BV(ADEN) |_BV(ADSC);

  unsigned short freqCtrl = adcVals[1]; //analogRead(A3) & 0x03ff;
  octave = 1 << (freqCtrl >> 7); // leaves us with 3-bits of octave range (1-8)
  note = freqCtrl & NOTEMASK;
  unsigned short ctrl2  = adcVals[0]; // analogRead(A1) & 0x03ff;
  octave2 = 1 << (ctrl2 >> 7); // leaves us with 3-bits of octave range (1-8)
  note2 = ctrl2 & NOTEMASK;

  // Oscillator 1
  OCR0A = pgm_read_byte(&wave[(idx+0x20) >> 6]);

  // Oscillator 2 (hard sync-ed to Osc1)
  OCR0B = pgm_read_byte(&wave[(idx2+0x20) >> 6]);

  idx += octave * (pgm_read_byte(&octaveLookup[note]));
  idx2 += octave2 * (pgm_read_byte(&octaveLookup[note2]));

//  // hard sync oscillator 2
//  if (idx < oldIdx)
//  {
//    idx2=0;
//  }

}

