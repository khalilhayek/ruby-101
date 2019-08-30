# Let's place our game code in a module so we can hide it from users.

module Guessing_Game

	# Redefine our constant defaults
	MAX_TRIES = 5
	MARGIN = 2
	MAX_REPEATS = 3
	
	# Define the function and its parameters.
	def	Guessing_Game.guess_my_secret(max_tries = MAX_TRIES, margin = MARGIN, max_repeats = MAX_REPEATS)
	
		# This is the secret.
		secret = rand(1..9)
	
		# This is the list of guesses so far.
		# It's empty at the start.
		guesses = []
		
		puts "I have a secret number. Can you guess it in #{max_tries} tries?"
	
		for i in (1..max_tries)
			print "What's your guess? "
	
			ans = gets.chomp

			# Check for invalid answers.
			if r < max_repeats and not ans.match? /^[0-9]$/
				print "Invalid answer. It should be between 1 and 9. Try again:			   " 
				next		# Skip the rest and repeat the for loop. 
			end

			# The answer is an integer between 0 and 10. Now check if it's correct.
			guess = ans.to_i

			# Now check if the player has guessed this number before.
			for r in (1..max_repeats)
				guess = gets.chomp.to_i
	
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
end

