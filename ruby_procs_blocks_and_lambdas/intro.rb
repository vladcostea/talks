# What's a block?
# 
# Blocks are groups of statements that can be passed as a whole 
# to a method call or passed around as arguments to other functions
# 
# Blocks can be seen as "callbacks" to other method calls

# We've all used blocks in ruby wether we wanted to or not
# 
# Iterating, filtering and transforming collections of things in ruby requires the use of blocks

require 'pp'

range = (1..5)

pp range.map { |x| x * 2 }

pp range.select { |x| x.odd? }

pp range.reject(&:even?)

pp range.reduce(1) { |acc, e| acc * e }

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
