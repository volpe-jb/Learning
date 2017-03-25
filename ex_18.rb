# Introduction to functions
#

# this one is like the scripts with ARGV
def print_two(*args)   # take all the arguments to the function & puts them in args as a list
  arg1, arg2 = args    # unpacks the arguments
  puts "arg1: #{arg1}, arg2: #{arg2}"
end

# Zed writes that *args is pointless, so do this:
def print_two_again(arg1, arg2)
  puts "arg1: #{arg1}, arg2: #{arg2}"
end

# this takes one arguments
def print_one(arg1)
  puts "arg1: #{arg1}"
end

# this one doesn't take any arguments
def print_none()
  puts "Nada. Zip. Zilch."
end

# now call each function
print_two("J.", "B.")
print_two_again("Goldie-Belle", "V")
print_one("blueberries!")
print_none()
