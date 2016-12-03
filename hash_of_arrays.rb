#
# Learning hashes
# I'm adding hash of arrays - original code from learnrubythehardway.org/book/ex39.html
# by bvolpe
# 12-3-16
#
# this is the output: Michigan is abbreviated MI and has cities [["Flint", "Detroit", "Grand Rapids", "Ann Arbor", "Traverse City"]]
# have attempted to use city.gsub('[', ) to remove the [, but I cannot get it to work. More research

# Example code from Stack Overflow
# x = {}
# x['k1'] = Array.new
# x['k1'] << 'a'
# x['k1'] << 'b'

states = {
  'Oregon'     => 'OR',        # notice the comma
  'Florida'    => 'FL',
  'California' => 'CA',
  'New York'   => 'NY',
  'Michigan'   => 'MI'
}

# ORIGINAL CODE
# create a basic set of states and some cities
#cities = {
#  'CA' => 'Silicon Valley',
#  'MI' => 'Flint',
#  'FL' => 'Orlando',
#  'FL' => 'Pensacola'     # this second 'FL' overwrites the previous one
#}

cities ={}
cities['OR'] = Array.new
cities['FL'] = Array.new
cities['CA'] = Array.new
cities['NY'] = Array.new
cities['MI'] = Array.new

cities['OR'] << ['Portland', 'Eugene', 'Salem']
cities['FL'] << ['Pensacola', 'Fort Walton Beach', 'Orlando', 'Jacksonville']
cities['CA'] << ['Silicon Valley', 'Palo Alto', 'San Francisco']
cities['NY'] << ['Glens Falls', 'Hudson Falls', 'Fort Edward', 'Peru']
cities['MI'] << ['Flint', 'Detroit', 'Grand Rapids', 'Ann Arbor', 'Traverse City']

# every state abbreviation
puts '-' * 10
states.each do |state, abbrev|
  city = cities[abbrev]
  puts "#{state} is abbreviated #{abbrev} and has cities #{city}"
end
