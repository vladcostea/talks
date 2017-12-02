# Blocks are defined using do...end or { ... }
# They are converted by the ruby vm to procs when executing the method with which they're called
# 
# Fun facts:
# 1. yield can be called multiple times (so can block.call)
# 2. block_given? checks to see if a block was actually passed to the method
# 3. execution the method body statements continue after yielding

def method_with_inferred_block
  puts "Getting the time"
  yield(Time.now)
  puts "You should have gotten the time"
end

def method_with_explicit_block(&block)
  puts "block is #{block.inspect}"
  block.call(42)
end

method_with_inferred_block do |now|
  puts "the current time is #{now}"
end

method_with_explicit_block do |answer_to_life|
  puts "The answer to life is #{answer_to_life}"
end
