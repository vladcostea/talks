# What's a block?
# 
# Blocks are groups of statements that can be passed as a whole 
# to a method call or passed around as arguments to other functions
# 
# All Ruby methods implicitly take a block
# 
# There are a few ways to use blocks from methods

# As standalone arguments
def i_take_a_block &block
  block.call
end

i_take_a_block { puts "I take a block" }

# Implicitly, using a yield statement
def i_use_yield
  yield
end

i_use_yield { puts "I was yielded" }

# Methods can check if a block was given
def not_sure_if_block
  if block_given?
    yield
  else
    puts "No block given"
  end
end

not_sure_if_block

not_sure_if_block { puts "Block given and yielded" }

# Yield does not skip the code after it
# Think how File.open, when receiving a block closes the file
def i_continue_after_yield
  yield
  puts "I am after yield"
end

i_continue_after_yield { puts "I am before yield" }

# Yield can be called with values and can be called multiple times
def multi_yield
  i = 0
  yield i + 1
  yield i + 2
end

multi_yield { |x| puts "I received #{x}" }

# The ampersand '&' tells ruby to treat that parameter as a block
# If it's already a Proc object, Ruby will treat it as the implicit block
# 
# When we write our method definition, we can explicitly state that we expect this 
# method to possibly take a block by prefixing the last parameter with an &
def needs_ampersand &block
  block.call
end

needs_ampersand { puts "blocking" }

# Blocks are just procs
def i_take_a_proc_as_a_block &proc_obj
  puts proc_obj.inspect
end

i_take_a_proc_as_a_block { }
