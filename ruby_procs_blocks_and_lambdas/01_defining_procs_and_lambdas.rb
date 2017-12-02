# While procs and lambdas are very similar (a lambda is just a special kind of proc) they are defined in different ways

# lambdas

l1 = lambda do |x|
  puts "you passed #{x} to l1"
end

l2 = ->(x) { puts "you passed #{x} to l2" }

# procs

p1 = Proc.new { |x, y| x + y }

p2 = proc { |x, y| x - y }

l1.call(13)
l2.call(42)

puts p1.call(5, 2)
puts p2.call(10, 1)

puts l1.inspect
puts l1.lambda?

puts p1.inspect
puts p2.lambda?
