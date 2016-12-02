#
# Learning hashes
# from learnrubythehardway.org/book/ex39.html
# by bvolpe
#

states = {
  'Oregon'     => 'OR',        # notice the comma
  'Florida'    => 'FL',
  'California' => 'CA',
  'New York'   => 'NY',
  'Michigan'   => 'MI'
}

# create a basic set of states and some cities
cities = {
  'CA' => 'Silicon Valley',
  'MI' => 'Flint',
  'FL' => 'Orlando',
  'FL' => 'Pensacola'     # this second 'FL' overwrites the previous one
}

# add more cities
cities['NY'] = 'New York'
cities['OR'] = 'Portland'

# puts some cities
puts '-' * 10
puts "NY State has: #{cities['NY']}"
puts "FL State has: #{cities['FL']}"

#puts some states
puts '-' * 10
puts "Michigan's abbreviation is: #{states['Michigan']}"
puts "Florida's abbreviation is: #{states['Florida']}"

#puts with states then cities
puts '-' * 10
puts "Michigan has: #{cities[states['Michigan']]}"
puts "Florida has: #{cities[states['Florida']]}"

#puts every state abbreviation
puts '-' * 10
states.each do |state, abbrev|
  city = cities[abbrev]
  puts "#{state} is abbreviated #{abbrev} and has city #{city}"
end

puts '-' * 10
#ruby says 'nil' when something isn't found
state = states['Texas']

if !state
  puts "Sorry, that state (Texas) wasn't found."
end

#default values using ||= with the nil result
city = cities['TX']
city ||= 'Does Not Exist'
puts "The city for the state 'TX' is #{city}"
