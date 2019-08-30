# There are flies in the ointment:
# First, board is a global variable, and methods can't access it.
# We'll have to pass it to each method as an argument.
# Second, the user types the row and column numbers, they are read as strings, 
# so they can't be used as integer indeces into the matrix.
# We'll first have to convert them to nuintegers.
# So, let's get do these fixes quickly.

board = [
	['_', '_', '_'],
	['_', '_', '_'],
	['_', '_', '_']
]

# Let's play.
# We will write Ruby code, and use methods that don't yet exist.
# We'll write those methods later.

player = 'X'
show_board board

while true
	# Get the player's move.
	print "Player #{player}: make your move: "
	row = gets.chomp.to_i
	col = gets.chomp.to_i

	# Update the board and display it again.
	if is_a_legal_move board, player, row, col
		board = update_board board player, row, col
	end
	show_board board

	# Is it a win or a tie? End the game.
	if is_a_winner board, player
		puts "Player #{player} won!"
		break
	elsif is_a_tie board
		puts "Game is tied!"
		break
	end

	# The next round is for the other player.
	if player == 'X'
		player = 'O'
	else
		player = 'X'
	end
end
