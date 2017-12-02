# Enumerable objects in ruby make use of blocks, procs and lambdas when iterating over collections

# mapping
doubles = [1, 2, 3].map do |x|
  x * 2
end

puts doubles.inspect

# filtering
multi5 = [10, 12, 15, 23, 25].select do |x|
  x % 5 == 0
end

puts multi5.inspect

# sorting
sorted = %w[zb za zc].sort do |x, y|
  x[1] <=> y[1] # sort words by the second letter
end

puts sorted.inspect

# combine filtering and mapping
triple_odds = [1, 2, 3, 4, 5].select { |x| x.odd? }
                             .map { |x| x * 3 }

puts triple_odds.inspect

# using lambdas as first class citizens

is_odd = ->(x) { x.odd? }
triple = ->(x) { x * 3 }

# We need to prefix the lambdas with & in order to force the method call to take is_odd and triple as blocks iso arguments
triple_odds = [1, 2, 3, 4, 5].select(&is_odd)
                             .map(&triple)

puts triple_odds.inspect

# By defining the lambdas and procs outside the block body, we make them reusable and easily testable

if is_odd.call(3)
  puts "is_odd tests if a number is odd"
else
  puts "is_odd is busted"
end
