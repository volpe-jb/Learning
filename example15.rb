# example15 Reading Files   Learn Ruby the Hard Way

filename = ARGV.first

txt = open(filename)    # opens the filename given at the command line

puts "Here's your file #{filename}:"
print txt.read

print "Type the filename again: " # gets filename when script is running
file_again = $stdin.gets.chomp

txt_again = open(file_again)

print txt_again.read

#  Ask for a different file name
print "Type a new filename: " # gets filename when script is running
file_two = $stdin.gets.chomp

txt_two = open(file_two)  # Open the file!! Forgot this

print txt_two.read
