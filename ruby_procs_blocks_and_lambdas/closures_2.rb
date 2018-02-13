


# Closures

# Since any args passed into a method become visible in it's scope, 
# we can create closures "around" these args

def i_make_an_arg_closure(start)
  ->(x) { start + x }
end

adder_from_100 = i_make_an_arg_closure(100)
adder_from_1000 = i_make_an_arg_closure(1000)

puts adder_from_100.call(1)
puts adder_from_1000.call(1)
