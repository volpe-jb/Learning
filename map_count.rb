M = 'land'
o = 'water'

world = [[0,0,0,0,0,0,0,0,0,0,0],
         [0,0,0,0,M,M,0,0,0,0,0],
         [0,0,0,0,0,0,0,0,M,M,0],
         [0,0,0,M,0,0,0,0,0,M,0],
         [0,0,0,M,0,M,M,0,0,0,0],
         [0,0,0,0,M,M,M,M,0,0,0],
         [0,0,0,M,M,M,M,M,M,M,0],
         [0,0,0,M,M,0,M,M,M,0,0],
         [0,0,0,0,0,0,M,M,0,0,0],
         [0,M,0,0,0,M,0,0,0,0,0],
         [0,0,0,0,0,0,0,0,0,0,0]]

def continent_size world, x,y
  if world[x][y] != 'land'
      puts 'in continent_size ' + x.to_s + ', ' + y.to_s
   # Either it's water or we already counted it. We dont want to count it now
   return 0
  end
  
  # count the first tile
  size = 1
  world[x][y] = 'counted land'
  puts 'after -counted land- '  + x.to_s + ', ' + y.to_s
  
  # count the neighboring 8 tiles (and their neighbors by way of recursion)
  size = size + continent_size(world, x-1, y-1)
  puts 'A ' + size.to_s + "   " + x.to_s + ', ' + y.to_s
  
  size = size + continent_size(world, x  , y-1)
  puts 'B ' + size.to_s + "   " + x.to_s + ', ' + y.to_s
  
  size = size + continent_size(world, x+1, y-1)
  puts 'C ' + size.to_s + "   " + x.to_s + ', ' + y.to_s
  
  size = size + continent_size(world, x-1, y  )
  puts 'D ' + size.to_s + "   " + x.to_s + ', ' + y.to_s
  
  size = size + continent_size(world, x+1, y  )
  puts 'E ' + size.to_s + "   " + x.to_s + ', ' + y.to_s
  
  size = size + continent_size(world, x-1, y+1)
  puts 'F ' + size.to_s + "   " + x.to_s + ', ' + y.to_s
  
  size = size + continent_size(world, x  , y+1)
  puts 'G ' + size.to_s + "   " + x.to_s + ', ' + y.to_s  
  
  size = size + continent_size(world, x+1, y+1)
  puts 'H ' + size.to_s  + "   " + x.to_s + ', ' + y.to_s   
  puts '--------'
  size
end

puts continent_size(world, 5, 5)
