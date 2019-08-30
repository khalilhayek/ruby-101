# Look at the change that we did last time.
# (guess - secret) <= 2 or (secret - guess) <= 2
#
# It does the job, but we can write it better:
# (guess - secret).abs <= 2
#
# Also, what if, in the future, we decided to change the hint
# margin from 2 to 3 (make it harder) or to 1 (make it easier) ?
# We'll save the margin value in another constant.
# MARGIN = 2
# ...
# (guess - secret).abs <= MARGIN


# This is the number of tries. It is a constant. It will not change.
MAX_TRIES = 5

# This is the margin value that we use for the hint.
MARGIN = 2

# This is the secret.
secret = rand(1..9)


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
	if guess == secret
		puts "Hoorray!"
		exit

	# Did you guess close?
	elsif (guess - secret).abs <= MARGIN
		puts "Wrong, but close! Try again."

	# Did you guess wrong? Try again.
	else
		puts "Wrong! Try again."
	end
end

# If you arrived here, it means you could not guess it.
puts "Sorry! Time out!"

