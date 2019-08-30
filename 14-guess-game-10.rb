# Load the game module.
require_relative 'guessinggame'

# Ideally, we'd play forever. Let's put a forever loop.
while true
	# Play a game.
	Guessing_Game.guess_my_secret

	# Ask if the user wants to play another game.
	print "\nDo you want to play another game? (y|N)	"

	# Convert the answer to capital and simplify the test.
	if gets.chomp.upcase != 'Y'
		puts "Goodbye!"
		break		# This break stop the while loop.
	end
end
