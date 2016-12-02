#
# Learning hashes
# from learnrubythehardway.org/book/ex39.html
# by bvolpe
#

states = {
  'Oregon'     => 'OR'
  'Florida'    => 'FL'
  'California' => 'CA'
  'New York'   => 'NY'
  'Michigan'   => 'MI'
}

# create a basic set of states and some cities
cities = {
  'CA' => 'Silicon Valley'
  'MI' => 'Flint'
  'FL' => 'Pensacola'
  'FL' => 'Orlando'
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
puts "Michigan has: #{cities[states['Michigan']]}"
puts "Florida has: #{cities[states['Florida']]}"

#puts every state abbreviation
puts '-' * 10
states.each do |state, abbrev|
  city = cities[abbrev]
  puts "#{state} is abbreviated #{abbrev} and has city #{city}"
end
