




# Intro

# We can use blocks when opening files
# The File.open method receives a block and yields a File object
# which we can manipulate
# 
# Using blocks when working with files is useful, 
# since we don't have to worry about closing the file, it's done for us
File.open(__FILE__, 'r') do |f|
  f.each_line do |line|
    puts line
  end
end
