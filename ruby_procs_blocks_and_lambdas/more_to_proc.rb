# Remember, putting & in front of anything, 'to_procs' it

files = %w[
  .hidden
  .
  ..
  SpecialOsFile
  one.json
  two.json
  three.rb
  four.yml
  five.html
  six.xml
]

file_filter = ->(type, blacklist) {
  ->(file) { !file.start_with?('.') && file.end_with?(".#{type}") && !blacklist.include?(file) }
}

class FileFilter
  def initialize(type, blacklist)
    @type = type
    @blacklist = blacklist
  end

  def to_proc
    ->(file) { 
      !file.start_with?('.') && file.end_with?(".#{@type}") && !@blacklist.include?(file)
    }
  end
end

filtered = files.select(&FileFilter.new('json', %w[SpecialOsFile]))
puts filtered

# Pros
# 1. Code becomes a bit more readable
# 2. Blocks are treated as first class citizens, being passed as "arguments" to methods
# 3. Easily test filters or mappers without having to setup 
#    collections of objects and testing against the result

# Cons
# 1. More classes, more code maintenance
# 2. Proper naming is hard...
