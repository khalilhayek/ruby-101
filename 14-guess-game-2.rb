# You've noticed that this is a tough game. The player will often lose.
# Let's help the player by giving him a hint if his guess
# is within 2 from the secret.

# This is the number of tries. It is a constant. It will not change.
MAX_TRIES = 5

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
	elsif (guess - secret) <= 2 or (secret - guess) <= 2
		puts "Wrong, but close! Try again."

	# Did you guess wrong? Try again.
	else
		puts "Wrong! Try again."
	end
end

# If you arrived here, it means you could not guess it.
puts "Sorry! Time out!"

