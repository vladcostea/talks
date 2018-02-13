





# Procs and Lambdas

# While procs and lambdas are very similar (a lambda is just a special 
# kind of proc) they are defined in different ways

# lambdas
l1 = ->(x) { puts x }
l1.call("hello")
puts l1.lambda?

l2 = lambda do |x|
  puts x
end
l2.call("hi")

puts l2.lambda?
