# example 14 Learn Ruby the Hard Way

user_name, date= ARGV # with only user_name, ARGV.first gets the first argument
prompt = '> '         # can't use ARGV.first with two command line variables. Ruby 
                      # will ignore additional input
puts "Hi #{user_name}."
puts "I'd like to ask you a few questions."
puts "Do you like me #{user_name}?"
print prompt
likes = $stdin.gets.chomp

puts "Where do you live #{user_name}?"
print prompt
lives = $stdin.gets.chomp

# a comma for 'puts' is like typing it twice
puts "What kind of computer do you have? ", prompt
computer = $stdin.gets.chomp

puts """
Alright, today is #{date}. 
You said #{likes} about liking me.
You live in #{lives}. Not sure where that is.
And you have a #{computer} computer. Nice.
"""
