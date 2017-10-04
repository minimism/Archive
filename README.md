# Wonkystuff

This repo will contain a few sound-generating/processing schematics/code for Wonkystuff hardware :)

## basic

*basic* is an ATTiny85-based tone generator, put together just to get acquainted with the basic techniqies
of getting an 8MHz, 8-pin microcontroller to make noises. As it stands, it's a two-oscillator tone generator
which supports audio-rate FM/PM of each oscillator, so it could be useful as a building block for something.

## adc

*adc* is another ATTiny85-based tone generator (same schematic as for *basic*), put together to learn a bit
more about this little device. *adc* is another two-oscillator tone generator but with the ADCs running at
their full resolution of 10 bits, slower than the sample-generating ISR runs. This was where I discovered
that my imagined sample rate was not accurate (audio ISR was starving the ADC ISR), so I have reduced the
sample rate. At the moment, this version also allows wavetable switching for oscillator 1 (sine/ramp).
More waveforms will be forthcoming.
