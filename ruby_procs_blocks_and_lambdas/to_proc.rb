




# Passing things as blocks

# If we put an ampersand in front of the last parameter to 
# a method definition, Ruby will try to treat this parameter as the method’s
# block and give us a name to refer to it
# 
# If the parameter is not a Proc, Ruby will try to convert it into one 
# (by calling to_proc on it) before associating it with the method 
# as its block.
# 
# In the context of a method call, putting an ampersand in front 
# of the last argument tells Ruby to convert this argument to a Proc 
# if necessary

class Odd
  def to_proc
    ->(x) { x.odd? }
  end
end
odd = Odd.new
puts (1..5).select(&Odd.new)

def with_block(&block)
  puts block.inspect
end

with_block(&odd)
