#
# More array methods testing for xroads
# by: brandi volpe
# 11-30-16
#

towns = ['Solace', 'Que-kiri', 'Xak-Tsaroth', 'Gateway', 'Que-teh', 'Haven', 'Qualinost', 'Newport', 'Qualinesti', 'Pax Tharkas']
lakes = ['Crystalmir Lake', 'Snowmelt', 'Que-teh Lake']
forests = ['Darken Wood', 'Green Glen', 'Smoky']
mountains = ['High-Top', 'Snow-Faerie', 'Winding Ridge']
people = ['Tanis', 'Flint', 'Raistlin', 'Caramon', 'Sturm', 'Tasselhoff', 'Goldmoon', 'Riverwind', 'Tika', 'Gilthanas', "Laurana"]

lakes.push 'Lowrey Lake'
forests.push 'Red Fir Forest'
puts '------'
puts lakes
puts lakes.last
puts '^ lakes.last'
puts lakes.length
puts '^ lakes.length'
puts '------'
puts lakes.pop
puts '^ lakes.pop'
puts '------'
puts lakes.length
puts '^ lakes.length'
puts '------'
puts forests
puts forests.last
puts '^ forests.last'
puts forests.length
puts '^ forests.length'
