# example13 Learn Ruby the Hard Way
# passing variables to a script

first, second, third = ARGV     # unpacks ARGV
                            # read it this way: Take what is in ARGV, unpack it 
                            #   and assign it to all of these ariables on the left 
                            #   in order
puts "Your first variable is: #{first}"
puts "Your second variable is: #{second}"
puts "Your third variable is: #{third}"
