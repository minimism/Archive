#define sample_rate (32000)

const unsigned int octaveLookup[] = {
    0x8000, // 0: 1.0 --> 32768.0
    0x879c, // 1: 1.0594630943592953 --> 34716.48667596539
    0x8fac, // 2: 1.122462048309373 --> 36780.836399001535
    0x9837, // 3: 1.189207115002721 --> 38967.93874440916
    0xa145, // 4: 1.2599210498948732 --> 41285.092962955205
    0xaadc, // 5: 1.3348398541700344 --> 43740.032341443686
    0xb504, // 6: 1.4142135623730951 --> 46340.95001184158
    0xbfc8, // 7: 1.4983070768766815 --> 49096.5262950951
    0xcb2f, // 8: 1.5874010519681994 --> 52015.95767089396
    0xd744, // 9: 1.681792830507429 --> 55108.98747006743
    0xe411, // 10: 1.7817974362806785 --> 58385.938392045275
    0xf1a1, // 11: 1.8877486253633868 --> 61857.74695590746
};

// idx can go from 0-2^32. PWM resolution is 8bits (0-255), so we can
// use an 8 bit fixed-point arrangement for smoother frequency control
// ADC is 10bit, so if we simply add the ADC to idx, we'll end up with
// 2 bits (0-3) of integer part, and 8 bits of fractional. That's probably Ok.

unsigned long idx = 0;

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
  freqCtrl = (analogRead(A3)) >> 7; // 32 steps
  
  pwmCtrl  = (analogRead(A1) + 1) >>2; // reduce to 8 bits
}

unsigned char note=1;
ISR(TIMER0_COMPA_vect)
{
  unsigned char outByte = ((idx >> 15) & 0xff);

  OCR1B = ~outByte; // PWM with the 'integer' part,
  idx += octaveLookup[freqCtrl];

  // output PWM wave on pin 5:
  if (outByte < pwmCtrl)  { PORTB |= 1;  }  else { PORTB &= ~(1); }

  idx &= 0x00ffffff;
}
