# One more thing: what if the player enters something invalid,
# like a number outside the range, or nothing, or a word? 
# We should check that the input is an integer within the range,
# and give the user 3 chances to fix it.

# Define the function and its parameters.
def	guess_my_secret(max_tries = 5, margin = 2, max_repeats = 3)

	# This is the secret.
	secret = rand(1..9)

	# This is the list of guesses so far.
	# It's empty at the start.
	guesses = []
	
	puts "I have a secret number. Can you guess it in #{max_tries} tries?"

	for i in (1..max_tries)
		print "What's your guess? "

		for r in (1..max_repeats)
			ans = gets.chomp

			# Check for invalid answers.
			if r < max_repeats and not ans.match? /^[0-9]$/
				print "Invalid answer. It should be between 1 and 9. Try again:			   " 
				next		# Skip the rest and repeat the for loop. 
			end

			# The answer is an integer between 0 and 10. Now check if it's correct.
			guess = ans.to_i

			# Did the player guess this one before?
			if r < max_repeats and guesses.include? guess
				print "You have used this guess before! Try again:			"
			# If the player repeats the old guess 3 times, use it.
			elsif guesses.include? guess
				puts "You have used this guess before! But since you insist ..."
				break
			else
				# Add this guess to the list of guesses.
				guesses.append guess
				break
			end
		end
	
		# Did you guess right? End the game.
		if guess == secret
			puts "Hoorray!"
			return		# No need for the variable 'win'. Just return from the method.
	
		# Did you guess close?
		elsif (guess - secret).abs <= margin
			puts "Wrong, but close! Try again."
	
		# Did you guess wrong? Try again.
		else
			puts "Wrong! Try again."
		end
	end
	
	# You'll only get here if you timed out.
	# No need to test for a win.
	puts "Sorry! Time out!"
end


# Ideally, we'd play forever. Let's put a forever loop.
while true
	# Play a game.
	guess_my_secret

	# Ask if the user wants to play another game.
	print "\nDo you want to play another game? (y|N)	"

	# Convert the answer to capital and simplify the test.
	if gets.chomp.upcase != 'Y'
		puts "Goodbye!"
		break		# This break stop the while loop.
	end
end
