#define sample_rate (32000)
#define cycleLength (256)

// idx can go from 0-65535. Cycle length is 8bits (0-255), so we can
// use an 8 bit fixed-point arrangement for smoother frequency control
// ADC is 10bit, so if we simply add the ADC to idx, we'll end up with
// 2 bits (0-3) of integer part, and 8 bits of fractional. That's probably Ok.

unsigned int idx = 0;

void setup() {

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
  if (sample_rate >= 31250) {
    TCCR0B = _BV(WGM02) | _BV(CS00); // 1:1 prescale
    OCR0A  = ((F_CPU + (sample_rate / 2)) / sample_rate) - 1;
  } else {                           // Good down to about 3900 Hz
    TCCR0B = _BV(WGM02) | _BV(CS01); // 1:8 prescale
    OCR0A  = (((F_CPU / 8L) + (sample_rate / 2)) / sample_rate) - 1;
  }
  TIMSK = _BV(OCIE0A); // Enable compare match, disable overflow

  // read from analogue on (chip pin 2)
  pinMode(A3, INPUT);

  // read from analogue on (chip pin 7)
  pinMode(A1, INPUT);

  // digital out for 'PWM' output (chip pin 5)
  pinMode(PB0, OUTPUT);
}

unsigned int freqCtrl;
unsigned int pwmCtrl;

void loop() {
  freqCtrl = (analogRead(A3) + 1) << 2;
  pwmCtrl  = (analogRead(A1) + 1) << 6; // fill up the 16 bits
}

ISR(TIMER0_COMPA_vect)
{
  OCR1B = ~(idx >> 8); // PWM with the 'integer' part,
  idx += freqCtrl;

  // output PWM wave on pin 5:
  if (idx < pwmCtrl)  { PORTB |= 1;  }  else { PORTB &= ~(1); }

  // no need to limit idx because it's just going to wrap and carry correctly
  // all by itself
}
