# Ok, fine, but how do we use the & trick with stuff that takes arguments?

# 1. Separate class
class DivisionFilter
  def initialize(divisor)
    @divisor = divisor
  end

  def to_proc
    ->(x) { x % @divisor == 0 }
  end
end

filter_fives = DivisionFilter.new(5)
puts [1, 2, 3, 4, 5].select(&filter_fives).inspect

# 2. Class methods
class Filters
  # We don't need a `to_proc` here because the lambda returned already has to_proc defined on it
  def self.dividable(divisor)
    ->(x) { x % divisor == 0 }
  end
end

puts [1, 2, 3, 4, 5].select(&Filters.dividable(2)).inspect

# Pros
# 1. Code becomes a bit more readable
# 2. Blocks are treated as first class citizens, being passed as arguments to methods
# 3. Easily test filters or mappers without having to setup collections of objects and testing against the result

# Cons
# 1. More classes, more code maintenance
# 2. Proper naming is hard...
