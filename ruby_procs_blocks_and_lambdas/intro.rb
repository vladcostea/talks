# We've all used blocks in ruby wether we wanted to or not
# 
# Iterating, filtering and transforming collections of things in ruby requires the use of blocks
# 

require 'pp'

pp [1, 2, 3].map { |x| x * 2 }

pp [1, 2, 3, 4, 5].select { |x| x.odd? }

pp [1, 2, 3, 4, 5].reject(&:even?)

pp [1, 2, 3, 4, 5].reduce(1) { |acc, e| acc * e }

# We can use blocks when opening files
# The File.open method receives a block and yields a File object
# which we can manipulate
# 
# Using blocks when working with files is useful, 
# since we don't have to worry about closing the file, it's done for us
File.open(__FILE__, "r") do |f|
  line_nr = 1
  f.each_line do |line|
    puts "#{line_nr}: #{line}"
    line_nr += 1
  end
end
