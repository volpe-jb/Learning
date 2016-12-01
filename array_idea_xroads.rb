#
# Testing array ideas for xroads
# by: brandi volpe
# 11-30-16
#

towns = ['Solace', 'Que-kiri', 'Xak-Tsaroth', 'Gateway', 'Que-teh', 'Haven', 'Qualinost', 'Newport', 'Qualinesti', 'Pax Tharkas']
lakes = ['Crystalmir Lake', 'Snowmelt', 'Que-teh Lake']
forests = ['Darken Wood', 'Green Glen', 'Smoky']
mountains = ['High-Top', 'Snow-Faerie', 'Winding Ridge']
people = ['Tanis', 'Flint', 'Raistlin', 'Caramon', 'Sturm', 'Tasselhoff', 'Goldmoon', 'Riverwind', 'Tika', 'Gilthanas', "Laurana"]

puts '------'
puts lakes
puts '------'
puts towns.join(', ') + ' - ' + forests.join(' - ')
puts '------'
puts people
puts '^ people array'
puts '------'

5.times do
  puts people.to_s
end
