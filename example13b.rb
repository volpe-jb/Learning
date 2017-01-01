# example13B Learn Ruby the Hard Way
# passing variables to a script

fruit1, fruit2, fruit3, fruit4 = ARGV    # unpacks ARGV
                            # read it this way: Take what is in ARGV, unpack it 
                            #   and assign it to all of these ariables on the left 
                            #   in order
                            # use ARGV to get inpits on the command line
puts "Your first variable is: #{fruit1}"
puts "Your second variable is: #{fruit2}"
puts "Your third variable is: #{fruit3}"
puts "Your fourth variable is: #{fruit4}"
puts "give me a fifth variable while script is running:"
fruit5 = $stdin.gets.chomp  # use $stdin.gets.chompe to get input while script is running
puts "Your fifth variable is: #{fruit5}"
