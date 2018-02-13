




# Intro

# What's a block?
# 
# Blocks are groups of statements that can be passed as a whole 
# to a method call or passed around as arguments to other functions
# 
# Blocks can be seen as "callbacks" for methods

# We've all used blocks in ruby wether we wanted to or not

# In Ruby, Enumerable exposes an API that takes blocks to iterate, 
# filter and transform collections of things

require 'pp'

range = (1..5).to_a

pp "select:"
pp range.select { |x| x.odd? }

pp "map:"
pp range.map { |x| x * 3 }

pp "reduce:"
pp range.reduce(0) { |acc, x| acc + x }
