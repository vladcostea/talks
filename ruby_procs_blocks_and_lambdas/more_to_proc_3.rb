



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

file_filter = ->(type) {
  ->(file) { file.end_with?(".#{type}") }
}

puts 'json:'
puts files.select(&file_filter.('json'))

puts 'yaml:'
puts files.select(&file_filter.('yml'))
