



# More #to_proc

# Remember, putting & in front of anything, 'to_procs' it

files = %w[
  SpecialFile.json
  one.json
  two.json
  .hidden.json
  three.rb
  four.yml
  five.html
  six.xml
]

class FileFilter
  def initialize(type)
    @type = type
  end

  def to_proc
    ->(file) {
      file.end_with?(".#{@type}")
    }
  end
end

puts 'json:'
puts files.select(&FileFilter.new('json'))

puts 'yml:'
is_yml = FileFilter.new('yml')
puts files.select(&is_yml)

class MapToSize
  def to_proc
    ->(file) { File.size("./files/#{file}")}
  end
end

to_filesize = MapToSize.new
puts files.select(&is_yml).map(&to_filesize)

# Pros
# 1. Code becomes a bit more readable
# 2. Blocks are treated as first class citizens, 
#    being passed as "arguments" to methods
# 3. Easily test filters or mappers without having to setup 
#    collections of objects and testing against the result

# Cons
# 1. More classes, more code maintenance, more code
# 2. Proper naming is hard...
