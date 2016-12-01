#
# Ruby for Kids Project 5: Simple Adventure
# Programmed By: Chris Haupt
# A random text adventure game.
#
def create_room
  "You are in a #{size} #{color} #{room_type}. There is an exit on the #{direction} wall."
end

def size
  ["huge", "large", "big", "avergage", "small", "tiny"].sample
end

def color
  ["red", "blue", "green", "purple", "gray", "dark", "golden", "quartz", "white", "pearlescent", "crystal"].sample
end

def room_type
  ["natural cave", "worked stone cave", "dirt tunnel", "cavern", "rock-strewn cavern", "cavern with stalagtites rising from the ground", "cavern wth stalagmites and stalactites", "guard room", "storeroom", "dragon's lair", "tomb"].sample
end

def direction
  ["north", "south", "east", "west"].sample
end

def has_monster?
  if roll_dice(2, 6) >= 8
    true
  else
    false
  end
end

def roll_dice(number_of_dice, size_of_dice)
  total = 0
  1.upto(number_of_dice) do
    total = total + rand(size_of_dice) + 1
  end
  return total
end

def has_escaped?
  if roll_dice(2, 6) >= 11
    true
  else
    false
  end
end

def monster_attack?
  if roll_dice(2, 6) >= 9
    true
  else
    false
  end
end

def defeat_monster?
  if roll_dice(2, 6) >= 4
    true
  else
    false
  end
end

def has_treasure?
  if roll_dice(2, 6) >= 8
    true
  else
    false
  end
end

def treasure
  ["gold coins", "ruby and emerald gems", "a wand of magic whistles", "a rusted sword", "a billowing cloak", "a shiny silver dagger with an emerald in the handle", "pint of dwarven ale", "tobacco pouch", "a book written in a mysterious language",  "a well-used bok bound in velvet", ].sample
end

number_of_rooms_explored  = 1
treasure_count            = 0
damage_points             = 5
escaped                   = false
monster                   = false
current_room              = ""

puts "You are trapped in the dungeon. Collect treasure and try to escape"
puts "before an evil monster gets you!"
puts "To play, type one of the command choices on each turn."
puts ""

while damage_points > 0 and not escaped do
  actions = ["m - move", "s - search"]
  puts "Room number #{number_of_rooms_explored}"
  puts current_room
  if monster
    puts "Oh no! An evil monster is in here with you!"
    actions << "f - fight"
  end
  print "What do you do? (#{actions.join(', ')}): "

  player_action = gets.chomp
  if monster and monster_attack?
    damage_points = damage_points - 1
    puts "OUCH, the monster bit you!"
  end
  if player_action == "m"
    current_room = create_room
    number_of_rooms_explored = number_of_rooms_explored + 1
    monster = has_monster?
    escaped = has_escaped?
  elsif player_action == "s"
    if has_treasure?
      puts "You found #{treasure}!"
      treasure_count = treasure_count + 1
    else
      puts "You look, but don't find anything."
    end
    # when you look for treasure, you might attract another monster!
    if not monster
      monster = has_monster?
    end
  elsif player_action == "f"
    if defeat_monster?
      monster = false
      puts "You defeated the scary monster!"
    else
      puts "You attack and MISS!!!"
    end
  else
    puts "I don't know how to do that!"
  end
  puts ""
end

if damage_points > 0
  puts "You escaped! "
  puts "You explored #{number_of_rooms_explored} rooms"
  puts "and found #{treasure_count} treasures."
else
  puts "OH NO! You didn't make it out!"
  puts "You explored #{number_of_rooms_explored} rooms"
  puts "before meeting your doom."
end
