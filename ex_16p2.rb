#
#

filename = ARGV.first

target = open(filename, 'r')  # opens the filename with write+ privileges and creates file obect
                               # w+ removes all existing data in the file, and effectively overwrites
                               #          an existing file. If a file with the specified name does not exist, you a new file is created.
puts "We're going to erase #{filename}"
puts "If you don't want that, hit CTRL-C (^C)."
puts "If you do want that, hit RETURN."

#$stdin.gets

puts "File was opened at beginning of code - in read-only mode."

puts "Here are the contents of the file: "
print target.read

puts "We are closing the file, in read-only mode."
target.close

puts "Opening file in write mode."
target = open(filename, 'w')  # opening in 'w' mode automatically clears the file

# No need for the following two lines
#puts "Truncating the file. Goodbye!"
#target.truncate(0)

puts "Now I'm going to ask you for three lines."

print "line 1: "
line1 = $stdin.gets.chomp
print "line 2: "
line2 = $stdin.gets.chomp
print "line 3: "
line3 = $stdin.gets.chomp

puts "I'm going to write these to the file."

target.write(line1)
target.write("\n")
target.write(line2)
target.write("\n")
target.write(line3)
target.write("\n")

puts "And finally, I close the file."
target.close
