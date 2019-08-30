# We have ignored a potential problem:
# What if the player selects an illegal move?
# An illegal move can be a cell that's already marked, or a cell that 
# does not exist.
# In our program, it gets ignored, and the play passes on to the other player.
# But in real life, the player should be asked again.
# Let's fix that now.

# We will also learn two new Ruby things:
# First:
# You can always call "return something" from a method to quit it and 
# return the value of something.
# If the method runs to its last line, it will return the value of that line.
# In this case, you don't need to write "return".

# Second:
# Using the conditional assignment operator "?:"
# It looks like this:
# some_condition ? value_if_true : value_if_false
# For example:
# a = 3+6 == 9 ? 'Of course' : 'Nope'
# in this case, variable 'a' will contain 'Of course'.
# b = 3+6 == 19 ? 'Of course' : 'Nope'
# in this case, variable 'b' will contain 'Nope'.


board = [
	['_', '_', '_'],
	['_', '_', '_'],
	['_', '_', '_']
]


def show_board board
	for row in board
		print row.join(' '), "\n"
	end
end


# Check if the player's move is legal.
# The player has selected a cell, defined by its row and column numbers.
# The move is legal if this cell exists and is empty.
def is_a_legal_move board, row, col
	# We don't need to say "return if true ...", since this is the last line
	# of the method. The method will return the value of its last line.
	row.between? 0,2 and col.between? 0,2 and board[row][col] == '_'
end


def update_board board, player, row, col
	board[row][col] = player
	return board
end


def is_a_tie board
	# Simplify the code here: 
	# If the board includes a '_', it's not a tie (false),
	# otherwise it's a tie.
	# We don't need to say "return", since this is the last line
	# of the method. The method will return the value of its last line.
	return not board.flatten.include? '_'
end


def is_a_winner board, player
	for b in [ board, board.transpose ]
		for row in b
			if row.join.match("#{player}#{player}#{player}")
				return true
			end
		end
	end

	if board[0][0]+board[1][1]+board[2][2] == "#{player}#{player}#{player}"
		return true
	elsif board[0][2]+board[1][1]+board[2][0] == "#{player}#{player}#{player}"
		return true
	end

	# We don't need to say "return", since this is the last line
	# of the method. The method will return the value of its last line.
	false
end


# Now the main part.

player = 'X'
show_board board

while true
	while true
		print "Player #{player}: make your move: "
		row, col = gets.chomp.split.map { |x| x.to_i }

		if is_a_legal_move(board, row, col)
			break
		else
			put "Illegal move! Try again."
		end
	end

	board = update_board board, player, row, col
	show_board board

	if is_a_winner(board, player)
		puts "Player #{player} won!"
		break
	elsif is_a_tie(board)
		puts "Game is tied!"
		break
	end

	# Use the conditional assignment operator.
	# Here is how it works:
	# player == 'X' ? evaluates to true or false.
	# If it is true, the whole expression returns what's between ? and :
	# If it is false, the whole expression returns what's after the :
	# The value of the expression player == 'X' ? 'O' : 'X' will
	# then be either 'O' or 'X'. That is then assigned to player.
	player = player == 'X' ? 'O' : 'X'
end
