# You can play this game once. Then if you want to play again,
# you'll have to re-run the program.
#
# A good game will ask the user if she wants to play again.
# 

# This is the number of tries. It is a constant. It will not change.
MAX_TRIES = 5

# This is the margin value that we use for the hint.
MARGIN = 2

# Play the game. At the end, ask the user if she wants to continue
# and play another game, or quit and go do homework and chores!

# Ideally, we'd play forever. Let's put a forever loop.
while true

	# This is the secret.
	secret = rand(1..9)
	
	# Did you win? Not yet.
	win = false
	
	puts "I have a secret number. Can you guess it in #{MAX_TRIES} tries?"

	for i in (1..MAX_TRIES)
		print "What's your guess? "
		# Note how we left a space after the ?
		# Because the user will type his number his guess right after it.
		# It looks better not stuck to the ?
	
		# Read the keyboard. Remove the \n. Convert to integer.
		guess = gets.chomp.to_i
		# Why did we convert to integer with .to_i ?
		# Try running the game without this conversion.
	
		# Did you guess right? End the game.
		# Notice how we changed the 'exit' to 'break'
		# because 'exit' stops the whole program, 
		# but we just want to stop the for loop then
		# ask the user to play another game.
		if guess == secret
			puts "Hoorray!"
			win = true
			break		# This break stop the for loop.
	
		# Did you guess close?
		elsif (guess - secret).abs <= MARGIN
			puts "Wrong, but close! Try again."
	
		# Did you guess wrong? Try again.
		else
			puts "Wrong! Try again."
		end
	end
	
	# Did you arrive here because you won or because you lost?
	if not win 
		puts "Sorry! Time out!"
	end

	# Ask if the user wants to play another game.
	# If the user enters y or Y, continue, otherwise stop.
	print "\nDo you want to play another game? (y|N)	"
	ans = gets.chomp
	if ans != 'y' and ans != 'Y'
		puts "Goodbye!"
		break		# This break stop the while loop.
	end
end
