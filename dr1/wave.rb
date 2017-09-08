# generate a sine table.
TWO_PI = 2 * Math::PI

steps=1024
puts "// Wavetable/cycle length is #{steps} - here's a buffer for it:"
print "const unsigned char wave[WTSIZE] PROGMEM = {\n  "
(0...steps).each do |n|
  v = Math::sin(TWO_PI * n.to_f/steps.to_f)
  print "0x#{((v*127)+127).to_i.to_s(16)}, "
end
puts "}"

