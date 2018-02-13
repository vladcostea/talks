




# Procs in case

# An interesting combo is using the case statement with procs and lambdas
# Case uses the 'case equality operator' (===) to test equality
# 
# It turns out that the === method is defined in the Proc class 
# (used to create procs and lambdas)
# somewhat similar to:
# 
# def ===(val)
#   call(val)
# end

meetup = { type: 'ruby' }

case meetup
  when ->(m) { m[:type] == 'ruby'}
    puts "yay"
  when ->(m) { m[:type] == 'php' }
    puts 'nay'
  end

class Meetup
  def self.of_type(type)
    ->(meetup) { meetup[:type] == type }
  end
end

case meetup
  when Meetup.of_type('ruby')
    puts "yay"
  when Meetup.of_type('php')
    puts 'nay'
  end
