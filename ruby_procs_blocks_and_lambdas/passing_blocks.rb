





# Passing Blocks

# All Ruby methods implicitly take a block
# There are a few ways to use blocks from methods

# Implicitly, using a yield statement
def i_take_a_block
  yield
end

i_take_a_block { puts "i was called"}


# Methods can check if a block was given
def i_check_if_block
  if block_given?
    yield
  else
    puts "no block"
  end
end

i_check_if_block
i_check_if_block { puts "i was yielded"}


# Yield does not skip the code after it
# Think how File.open, when receiving a block, closes the file
# after the block is done
def i_continue
  yield
  puts "after yield"
end
i_continue { puts "in yield"}


# Yield can be called with values and can be called multiple times
def i_generate
  yield 1
  yield 2
end
i_generate { |x| puts x }


# When we write our method definition, we can explicitly state that we expect 
# this method to possibly take a block by prefixing the last parameter 
# with an & (ampersand)
# 
# If it's already a Proc object, Ruby will treat it as the implicit block
def i_take_an_explicit_block &block
  puts block.inspect
end
i_take_an_explicit_block do
end
i_take_an_explicit_block {}
i_take_an_explicit_block


# Blocks are just procs
# do...end is just syntactic sugar
