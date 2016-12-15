# initialize variables
mealCost = 0.0
tipPercent = 0
taxPercent = 0

tip = 0.0
tax = 0.0
totalCost = 0.0

# Input 
# The first line has a double,  (the cost of the meal before tax and tip). 
mealCost = gets
#puts mealCost
# The second line has an integer,  (the percentage of  being added as tip). 
tipPercent = gets
#puts tipPercent
# The third line has an integer,  (the percentage of  being added as tax).
taxPercent = gets
#puts taxPercent

# calculations
tip = (mealCost.to_f * (tipPercent.to_f/100.to_i))

tax = (mealCost.to_f * (taxPercent.to_f/100.to_i))

totalCost = mealCost.to_f + tip.to_f + tax.to_f

# Output Format
# Print The total meal cost is totalCost dollars., where  is the rounded integer result of 
# the entire bill ( with added tax and tip). Print The total meal cost is totalCost dollars.
puts "The total meal cost is #{totalCost.round} dollars."

