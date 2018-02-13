require 'benchmark'

range = (1..30_000_000)

class Even
  def to_proc
    ->(x) { x.even? }
  end
end

class Double
  def to_proc
    ->(x) { x * 2}
  end
end

Benchmark.bm(12) do |x|
  x.report("blocks") do
    range.select(&:even?).map { |x| x * 2}
  end
  x.report("lambdas") do
    even = ->(x) { x.even? }
    double = ->(x) { x * 2}  
    range.select(&even).map(&double)
  end
  x.report("cached") do
    even = Even.new
    double = Double.new
    range.select(&even).map(&double)
  end
  x.report("new#to_proc") do
    range.select(&Even.new).map(&Double.new)
  end
end
