# Just a little bit of cleanup.

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


def is_a_legal_move board, player, row, col
	return true if board[row][col] == '_'
end


def update_board board, player, row, col
	board[row][col] = player
	return board
end


# Let's just reduce the code here:
# .flatten will fold the 3 x 3 array into a 9-element array.
def is_a_tie board
	if board.flatten.include? '_'
		return false
	else
		return true
	end
end


def is_a_winner board, player
	# Use the same code to check the board and the transposed board.
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

	return false
end


# Now the main part.

player = 'X'
show_board board

while true
	# Use a single read statement.
	# Assume the user will type: row# space(s) col# ENTER, e.g., 2 1 ENTER
	print "Player #{player}: make your move: "
	row, col = gets.chomp.split.map { |x| x.to_i }
	# Take a minute to understand what we just wrote:
	# gets reads the keyboad input, up to and including the newline.
	# .chomp removes the newline.
	# .split splits the input string on the space, i.e., splits "2 1"
	# into the list ["2", "1"].
	# .map applies the .to_i operation to each item in the list.
	# .to_i converts the string "2" to the integer number 2.
	# The end result is the list [2, 1].
	# row takes on the first value, col takes on the second value.
	# That's a lot of work for a single line of code.

	if is_a_legal_move(board, player, row, col)
		board = update_board board, player, row, col
	end
	show_board board

	if is_a_winner(board, player)
		puts "Player #{player} won!"
		break
	elsif is_a_tie(board)
		puts "Game is tied!"
		break
	end

	if player == 'X'
		player = 'O'
	else
		player = 'X'
	end
end
