# Show that variables in a function ARE NOT connected to those in rest of scripts
#

def cheese_and_crackers(cheese_count, boxes_of_crackers)  # function, takes two arguments
  puts "You have #{cheese_count} cheeses!"                # prints value of first argument
  puts "You have #{boxes_of_crackers} boxes of crackers!" # prints value of second argument
  puts "Man, that's enouh for a party!"
  puts "Get a blanket.\n"
end

puts "We can just give the function numbers directly:"
cheese_and_crackers(20,30)  # passes in two numbers for arguments

puts "OR, we can use variables from our script:"
amount_of_cheese = 10  # these two lines explicitly sets variables to numbers (parameters)
amount_of_crackers = 50

cheese_and_crackers(amount_of_cheese, amount_of_crackers)  # calls the function and passes in the two variables

puts "we can even do math inside too:"
cheese_and_crackers(10 + 20, 5 + 6)  # calls the function and passes in addition

puts "And we can combine the two, variables and math:"
cheese_and_crackers(amount_of_cheese + 100, amount_of_crackers + 188)
                     # line above calls function, performs addition prior to handing arguments

print "Please tell me how many cheeses you have > "
amount_of_cheese = $stdin.gets.chomp
print "Please tell me how many crackers you have > "
amount_of_crackers = $stdin.gets.chomp

# call the function again with user-entered numbers
cheese_and_crackers(amount_of_cheese, amount_of_crackers)
