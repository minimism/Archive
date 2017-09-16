# dr.1

dr.1 is (currently) a simple two-oscillator drone-synth with independent pitch control
for each sine-wave oscillator. Oscillator 2 is hard-synced to oscillator 1 meaning that
some quite complex waveforms can be created even with such a simple configuration. It is
somewhat of an exercise in seeing what an ATTiny85 (a sub 1$ part) can do.

The files in this directory go toward making the dr.1 noise-maker:

* `calc.rb` is a code-generator which generates `calc.h` and `calc.ino`,
   containing definitions for sample rate, pitch-lookup table and audio-wavetable.
   Simply run `ruby calc.rb` and the `calc.h` and `calc.ino` files will be regenerated.
   
   This makes it relatively simple to update the audio wavetable, or number of pitches
   per octave, or the sampling rate etc.
* `dr1.ino` is the main code - responsible for outputting the audio and reading
   the controls as you might expect. The code is going to be pretty much like most
   of the code out on the internet already, so nothing particularly new here. Attempts
   are made to make the code efficient.
   
As of now (14th September 2017) this is still a work in progress -- there are many plans
for this particular synth.

## Oscillator 1

Output through pin 5; pitch control via pin 2.

## Oscillator 2

Output through pin 6; pitch control via pin 7.
