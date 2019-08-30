# OK, now let's define those missing methods.

board = [
	['_', '_', '_'],
	['_', '_', '_'],
	['_', '_', '_']
]


# Here's the method to display the board.
def show_board board
	for row in board
		print row.join(' '), "\n"
	end
end


# Check if the player's move is legal.
# The player has selected a cell, defined by its row and column numbers.
# The move is legal if this cell is empty.
def is_a_legal_move board, player, row, col
	return true if board[row][col] == '_'
end


# Here's the method to update the board with the player's move.
# The player has selected a cell, defined by its row and column numbers.
def update_board board, player, row, col
	board[row][col] = player
	return board
end


# We need to test if the game is tied.
# The game is tied when there are no more moves, i.e., 
# when no cell is empty.
def is_a_tie board
	for row in board
		return false if row.include? '_'
	end
	return true
end


# We need to test if our player won the game.
# The game is won when one row, column or diagonal, has all X or all O.
# Let's write a program to play Tic-Tac-Toe with 2 players.
# Refer to the algorithm of this game that we wrote at the very
# beginning of this tutorial.

def is_a_winner board, player
	# Does any row contain 3 marks for this player?
	# Check each row. 
	# You can check each cell in the row,
	# But it's faster to join them (as 3 characters) and match a string.
	for row in board
		if row.join.match("#{player}#{player}#{player}")
			return true
		end
	end

	# To compare the columns, simply transpose the matrix and 
	# check the rows again.
	for row in board.transpose
		if row.join.match("#{player}#{player}#{player}")
			return true
		end
	end

	# Now we check the diagonals. There's no easy way to do this.
	if board[0][0]+board[1][1]+board[2][2] == "#{player}#{player}#{player}"
		return true
	elsif board[0][2]+board[1][1]+board[2][0] == "#{player}#{player}#{player}"
		return true
	end

	# If we arrive here, it means no row, column or diagonal matched.
	# So the player did not win.
	return false
end


# Now the main part.

player = 'X'
show_board board

while true
	# Get the player's move.
	print "Player #{player}: make your move: "
	row = gets.chomp.to_i
	col = gets.chomp.to_i

	# Update the board and display it again.
	if is_a_legal_move(board, player, row, col)
		board = update_board board, player, row, col
	end
	show_board board

	# Is it a win or a tie? End the game.
	if is_a_winner(board, player)
		puts "Player #{player} won!"
		break
	elsif is_a_tie(board)
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
