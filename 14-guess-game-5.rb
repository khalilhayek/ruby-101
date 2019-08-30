# How about we make the game a 'method', so we can later put it in a library
# and call it from other game programs?
#
# We will turn MAX_TRIES and MARGIN into default parameters.

# Define the function and its parameters.
def	guess_my_secret(max_tries = 5, margin = 2)

	# This is the secret.
	secret = rand(1..9)
	
	# Did you win? Not yet.
	win = false

	puts "I have a secret number. Can you guess it in #{max_trieS} tries?"

	for i in (1..max_trieS)
		print "What's your guess? "
		guess = gets.chomp.to_i
	
		# Did you guess right? End the game.
		if guess == secret
			puts "Hoorray!"
			win = true
			break		# This break stop the for loop.
	
		# Did you guess close?
		elsif (guess - secret).abs <= margin
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
end


# Ideally, we'd play forever. Let's put a forever loop.
while true
	# Play a game.
	guess_my_secret

	# Ask if the user wants to play another game.
	print "\nDo you want to play another game? (y|N)	"
	ans = gets.chomp
	if ans != 'y' and ans != 'Y'
		puts "Goodbye!"
		break		# This break stop the while loop.
	end
end
