# basic

*basic* is a simple two-oscillator device with independent pitch control
for each sine-wave oscillator. The frequency input control is sampled
at the same rate as the oscillator, so audio-rate FM/PM is possible.

It is pretty much an exercise for me to get to grips with the ATTiny85.

The files in this directory go toward making the tone generator:

* `calc.rb` is a code-generator which generates `calc.h` and `calc.ino`,
   containing definitions for sample rate, pitch-lookup table and audio-wavetable.
   Simply run `ruby calc.rb` and the `calc.h` and `calc.ino` files will be regenerated.
   
   This makes it relatively simple to update the audio wavetable, or number of pitches
   per octave, or the sampling rate etc.
* `basic.ino` is the main code - responsible for outputting the audio and reading
   the controls as you might expect. The code is going to be pretty much like most
   of the code out on the internet already, so nothing particularly new here.

   Code is straight-line, which makes it pretty efficient. Frequency control is to
   a sub-10-cent resolution (128 steps in an octave), and 8 octaves should be
   supported. Code could probably perform some filtering to reduce aliasing, but
   it doesn't.

   Simple RC reconstruction filters on the PWM outputs seem to do the job. 
   
This has now proved it's worth to me as a testbed, so will probably not be
undergoing any more changes for a while. Now I've got the basics sorted, I'll move
onto making some more interesting sounds I hope…

## Oscillator 1

Output through pin 5; pitch control via pin 2.

## Oscillator 2

Output through pin 6; pitch control via pin 7.
