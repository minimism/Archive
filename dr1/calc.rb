if ARGV.length == 2

  steps=ARGV[0].to_f
  fracBits=ARGV[1].to_i
  multiplier=1 << fracBits
  puts "outputting #{steps} steps per octave"
 
  (0...steps).each do |n|
    f = 2.0**(n/steps)
    puts "0x#{(f*multiplier).to_i.to_s(16)} // #{n}: #{f} --> #{f*multiplier}"
  end
end

