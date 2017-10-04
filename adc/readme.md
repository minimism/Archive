# adc

*adc* is a simple device to play with reading the ADC channels as fast as possible,
in an interrupt routine so that the audio generation is independent. As such, it’s
a development of *basic*, but this time less bothered about trying to read the ADC
channels at the audio rate; this is just going to be ‘fast enough’ for full resolution.

The ADC interrupt routine is kicked off when the conversion completes, the next channel
is then selected and conversion kicked off again. The audio-rate ISR just reads the
ADC values from the buffer as necessary.


The files in this directory go toward making the tone generator:

* `calc.rb` is a code-generator which generates `calc.h` and `calc.ino`,
   containing definitions for sample rate, pitch-lookup table and audio-wavetable.
   Simply run `ruby calc.rb` and the `calc.h` and `calc.ino` files will be regenerated.
   
   This makes it relatively simple to update the audio wavetable, or number of pitches
   per octave, or the sampling rate etc.
* `adc.ino` is the main code - responsible for outputting the audio and reading
   the controls as you might expect. The code is going to be pretty much like most
   of the code out on the internet already, so nothing particularly new here.

   Code is straight-line, which makes it pretty efficient. Frequency control is to
   a sub-10-cent resolution (128 steps in an octave), and 8 octaves should be
   supported. Code could probably perform some filtering to reduce aliasing, but
   it doesn't.

   Simple RC reconstruction filters on the PWM outputs seem to do the job. 
   

## Oscillator 1

Output through pin 5; pitch control via pin 2.

## Oscillator 2

Output through pin 6; pitch control via pin 7.
