# guess game, computer hints could be lies
# brandi volpe
# nov 29, 2016

class Game
TOTAL_ROUNDS = 3

def initialize(player)
 @player  = player
 @round   = 0
 next_round
end # initialize

def next_round
  @computers_nuber
  @round_done
  @round += 1
  @player.prepare_for_new_round
end # next_round

# # # # # # #   Getters
def round
  @round
end

def done?
  @round > TOTAL_ROUNDS
end

def round_done?
  @round_done   # this is a flag variable
end
# # # # # # #   End Getters
end # Game class

class Player
def initialize(name)
  @name   = name
  @score  = 0
  prepare_for_new_round
end # of initialize

def prepare_for_new_round
  @total_guess_count         = 0
  @high_number               = 0
  @current_guess             = 0
  @current_number_of_guesses = 0
end # of prepare_for_new_round

# # # # # # #   Getters
def name
  @name
end

def score
  @score
end

def total_guess_count
  @total_guess_count
end

def high_number
  @high_number
end

def current_guess
  @current_guess
end

def guess_count
  @current_number_of_guesses
end
# # # # # # #   end Getters

# # # # # # #   Setter
def add_score(points)
  @score += points
end
# # # # # # #   end Setter

# # # # # # # UTILITY METHODS  (get info from user)
def get_high_number
  @high_number = gets.to_i       #since this is last line in the method, the @high_number is returned to the caller
end

def get_total_guess_count
  @total_guess_count = gets.to_i
end
# # # # # # # END UTILITY METHODS

# # # # # # # HELPER METHOD
def get_guess
  @current_number_of_guesses += 1
  @current_guess = gets.to_i
end
# # # # # # # END HELPER METHOD
end # Player class

puts "Welcome to Guess"
puts "We will play #{Game::TOTAL_ROUNDS} rounds. Try to guess the number."
puts "I'm thinking of in the fewest guesses. You'll estimate how many guesses it will take."
puts "If you do it in fewer guesses, you'll gain bonus points!"
puts ""
print "What is your name? "
name   = gets.chomp
player = Player.new(name)
game   = Game.new(player)

while !game.done? do
  puts ""
  puts "--------> Round ##{game.round}"
  puts ""

  if game.get_high_number       # get the max high number from the user
    if game.get_guess_count     # get the number of guesses user thinks

      game.prepare_computer_number
      while !game.round_done? do
        puts ""
        game.get_player_guess
        game.show_results
      end
      game.next_round

      end
    end
end

puts ""
game.print_final_score
