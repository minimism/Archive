# We're going to generate an octave's worth of increments.
# beginning by splitting an ocatve into steps

SRATE=32768
WTSIZE=1024

# root frequency is that of A0 (according to Dodge and Jerse pg.37)
ROOT=27.50

# the integer part of the sample increments in the table are no
# larger than 1, so we can use 15 bits for the fraction
FRACBITS = 15

# 128 steps per octave means that the 10 bit ADC covers 4 octaves
STEPS=128


File.open("calc.h",'w') do |f|
  f.puts "#define SRATE (#{SRATE})"
  f.puts "#define WTSIZE (#{WTSIZE})"
  f.puts "#define OCTSTEPS (#{STEPS})"
  f.puts "#define NOTEMASK (0x#{(STEPS-1).to_s(16)})"
  f.puts "const unsigned short octaveLookup[#{STEPS}] PROGMEM = {"

  (0...STEPS).each do |n|
    freq = ROOT * (2.0**(n.to_f/STEPS))
    # Dodge & Jerse (pg.67) say that the sample increment is WTSIZE*(fo/fs)
    si = (WTSIZE * freq)/SRATE
    sifixed = ((WTSIZE << FRACBITS)* freq)/SRATE
    f.puts "  0x#{sifixed.to_i.to_s(16)}, // #{freq} [#{si}]"
  end
  f.puts "};"
end
