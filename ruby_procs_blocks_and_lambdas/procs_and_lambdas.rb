# While procs and lambdas are very similar 
# (a lambda is just a special kind of proc) 
# they are defined in different ways

# lambdas

l1 = lambda do |x|
  puts "you passed #{x} to l1"
end

l2 = ->(x) { puts "you passed #{x} to l2" }

# procs

p1 = Proc.new { |x, y| x + y }

p2 = proc { |x, y| x - y }


# As we've seen procs and lambdas are defined differently, 
# but they differ in two other ways
# 
# 1. Procs return from the calling method, 
#    while lambdas simply return from themselves
# 
# 2. Procs don't care if you don't pass the right amount 
#    of arguments (they are niled), while lambdas raise exceptions

def return_from_lambda
  puts "Before lambda"
  -> { puts "I am lambda"; return; }.call
  puts "After lambda"
end

def return_from_proc
  puts "Before proc"
  proc { puts "I am proc"; return; }.call
  puts "After proc"
end

return_from_lambda
return_from_proc

# Both of them can be called with #call or .()

greet = proc { |name| puts "Hello, #{name}" }
sum = ->(x, y) { x + y }

greet.call
greet.()
puts sum.call(10)
puts sum.(10)
