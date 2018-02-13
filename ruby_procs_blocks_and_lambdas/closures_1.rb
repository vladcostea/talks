



# Closures

# Procs and lambdas capture their surrounding context
# This enables us to create closures over variables

sum = 100

adder = ->(x) { sum + x }

puts adder.(10)
puts adder.(20)
