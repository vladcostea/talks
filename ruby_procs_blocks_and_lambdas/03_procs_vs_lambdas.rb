# As we've seen procs and lambdas are defined differently, but they differ in two other ways
# 
# 1. Procs return from the calling method, while lambdas simply return from themselves
# 
# 2. Procs don't care if you don't pass the right amount of arguments, while lambdas raise exceptions

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

greet = proc { |name| puts "Hello, #{name}" }
sum = ->(x, y) { x + y }

greet.call
puts sum.call(10)
