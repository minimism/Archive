#include "calc.h"

// This means that we want to have an indexer with 10 bits of integer
// and 'some' bits of fraction. Not sure whether 6 is enough, but we'll
// start with that.
unsigned short idx = 0;

void setup()
{
  PLLCSR |= _BV(PLLE);               // Enable 64 MHz PLL
  delayMicroseconds(100);            // Stabilize
  while (!(PLLCSR & _BV(PLOCK)));    // Wait for it...
  PLLCSR |= _BV(PCKE);               // Timer1 source = PLL

  // Set up Timer/Counter1 for PWM output
  TIMSK  = 0;                        // Timer interrupts OFF
  TCCR1  = _BV(CS10);                // 1:1 prescale
  GTCCR  = _BV(PWM1B) | _BV(COM1B1); // PWM B, clear on match
  OCR1C  = 255;                      // Full 8-bit PWM cycle
  OCR1B  = 127;                      // 50% duty at start

  pinMode(4, OUTPUT);                // Enable PWM output pin (chip pin 3)

  // Set up Timer/Counter0 for sample-playing interrupt.
  // TIMER0_OVF_vect is already in use by the Arduino runtime,
  // so TIMER0_COMPA_vect is used.  This code alters the timer
  // interval, making delay(), micros(), etc. useless (the
  // overflow interrupt is therefore disabled).

  // Timer resolution is limited to either 0.125 or 1.0 uS,
  // so it's rare that the playback rate will precisely match
  // the data, but the difference is usually imperceptible.
  TCCR0A = _BV(WGM01) | _BV(WGM00);  // Mode 7 (fast PWM)
  if (SRATE >= 31250) {
    TCCR0B = _BV(WGM02) | _BV(CS00); // 1:1 prescale
    OCR0A  = ((F_CPU + (SRATE / 2)) / SRATE) - 1;
  } else {                           // Good down to about 3900 Hz
    TCCR0B = _BV(WGM02) | _BV(CS01); // 1:8 prescale
    OCR0A  = (((F_CPU / 8L) + (SRATE / 2)) / SRATE) - 1;
  }
  TIMSK = _BV(OCIE0A); // Enable compare match, disable overflow

  // read from analogue on (chip pin 2)
  pinMode(A3, INPUT);

  // read from analogue on (chip pin 7)
  pinMode(A1, INPUT);

  // digital out for 'PWM' output (chip pin 5)
  pinMode(PB0, OUTPUT);
}

unsigned short freqCtrl;
unsigned short pwmCtrl;
unsigned char octave;
unsigned char note;

void loop() {
  freqCtrl = (analogRead(A3)) & 0x03ff;
  octave = 1 << (freqCtrl >> 7); // leaves us with 3-bits of octave range (1-8)
  note = freqCtrl & NOTEMASK;
  pwmCtrl  = (analogRead(A1) + 1) >> 2; // reduce to 8 bits
}

ISR(TIMER0_COMPA_vect)
{
  // look up the wave based on our index
  unsigned char outByte = pgm_read_byte(&wave[idx >> 6]);

  OCR1B = outByte; // PWM with the 'integer' part,
  // the octave lookup has 15 bits of fraction, and the
  // index only 6, so more shifting...
  
  idx += octave * (pgm_read_word(&octaveLookup[note]) >> 9);

  // output PWM wave on pin 5:
  if ((idx >> 8) < pwmCtrl)  {
    PORTB |= 1;
  }  else {
    PORTB &= ~(1);
  }

  // idx will automatically wrap
}
