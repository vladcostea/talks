# They also differ in two other ways:
# 
# 1. Procs return from the calling method, 
#    while lambdas simply return from themselves

def i_continue_after_return
  puts "before lambda return"
  -> { puts "lambda"; return }.call
  puts "after lambda return"
end

i_continue_after_return

def i_dont_continue
  puts "before proc"
  proc { puts "proc"; return }.call
  puts "after proc"
end

i_dont_continue

# 2. Procs don't care if you don't pass the right amount 
#    of arguments (they are niled), while lambdas raise exceptions
proc { |x, y, z| x + y; puts z.class }.call(1, 2)

->(x) { puts "called"}.()


# Both of them can be called with #call or .()
