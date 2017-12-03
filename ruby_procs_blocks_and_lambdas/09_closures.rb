# Procs and lambdas capture their surrounding context
# 
# This enables us to create closures over values

def create_closure
  sum = 0
  ->(x) { sum += x }
end

adder = create_closure

puts adder.call(5)
puts adder.call(10)
