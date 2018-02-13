


# Symbol#to_proc

# While calling [1, 2, 3].select { |x| x.odd? } is fine, 
# there is a shorter version: [1, 2, 3].select(&:odd?)
# 
# The Symbol class 'has' a to_proc method that returns a Proc object 
# that `sends` the symbol value to the object used

# Simple implementation:
# 
# class Symbol 
#   def to_proc
#     ->(object) { object.send(self) } # self is, in our case 'odd?'
#   end
# end
puts [1, 2, 3].select(&:odd?)
# So each Fixnum object, in turn is receiving the message 'odd?'

# Caveat: this won't work with methods that take arguments
