# An interesting combo is using the case statement with procs and lambdas
# 
# Case uses the 'case equality operator' (===) to test equality
# 
# It turns out that the === method is defined in the Proc class 
# (used to create procs and lambdas)
# somewhat similar to:
# 
# def ===(val)
#   call(val)
# end

is_dog = ->(val) { val[:animal] == "dog" }

case { animal: "dog" }
when is_dog
  puts "bark"
when ->(val) { val[:animal] == "frog" }
  puts "croak"
end

case 5
when :odd?.to_proc
  puts "odd"
when :even?.to_proc
  puts "even"
end
