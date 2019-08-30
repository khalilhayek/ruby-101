# Let's write a program to play Tic-Tac-Toe with 2 players.
# Refer to the algorithm of this game that we wrote at the very
# beginning of this tutorial.

# The game board consists of 3 rows, each has 3 columns.
# This is a matrix, which we represent in a 2-dimensional array.
# At the start, the board is empty.
# We could represent empty with a space, but it easier to spot and underscore.
board = [
	['_', '_', '_'],
	['_', '_', '_'],
	['_', '_', '_']
]

# Of course you recall how to use a 2D array:
# You can access a whole row as: board[row]
# You can access a cell as: board[row][col]
# Indexing, as usual, starts from zero. 
# The element at the top left is board[0][0], the top right is board[0][2],
# and the bottom right is board[2][2].

# Let's play.
# We will write Ruby code, and use methods that don't yet exist.
# We'll write those methods later.

player = 'X'
show_board

while true
	# Get the player's move.
	print "Player #{player}: make your move: "
	row = gets.chomp
	col = gets.chomp

	# Update the board and display it again.
	if is_a_legal_move player, row, col
		update_board player, row, col
	end
	show_board

	# Is it a win or a tie? End the game.
	if is_a_winner player
		puts "Player #{player} won!"
		break
	elsif is_a_tie
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
