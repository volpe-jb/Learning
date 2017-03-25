# Copying a file
#

from_file, to_file = ARGV
puts "Copying from #{from_file} to #{to_file}"

in_file = open(from_file)  # opens the first file named
indata = in_file.read  # reads in the data

# Determines # of bytes in the from_file
puts "The input file is #{indata.length} bytes long"

# Checks to see if the to_file exists.
puts "Does the output file exist? #{File.exist?(to_file)}"
puts "Ready, hit RETURN (or enter) to contine, CTRL-C to abort."
$stdin.gets  # gets RETURN/enter or aborted

out_file = open(to_file, 'w')  # opens second file named or will also create a file if it doesn't exist, see line 14
out_file.write(indata)  # writes the indata from_file to the to_file, using out_file variale

puts "Alright, all done. Will close both files."

out_file.close
in_file.close
