# Procs and lambdas capture their surrounding context
# 
# This enables us to create closures over values

def create_closure
  sum = 0
  ->(x) { sum += x }
end

adder = create_closure

puts adder.call(5)
puts adder.call(15)

# Since any args passed into a method become visible in it's scope, 
# we can create closures "around" these args
def closure_with_arg(arg)
  ->(x) { arg + x }
end

adder = closure_with_arg(10)
puts adder.call(50)

