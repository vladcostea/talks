```
->(x, y) { x + y }

lambda do |x, y|
  x + y
end

proc { |x, y| x + y }
Proc.new { |x, y| x + y }

(1..5).reduce(0) { |acc, e| acc + e }

binding.local_variables
binding.local_variable_get(:var)
```
