



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

json_filter = ->(file) { file.end_with?('.json') }

puts files.select(&json_filter)
