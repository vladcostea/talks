



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

puts files.select { |file|
  file.end_with?(".json") && !file.start_with?('.') && File.basename(file, '.*') != 'SpecialFile'
}
