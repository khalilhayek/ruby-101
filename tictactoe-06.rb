# Now our game is perfect. Let's clean up the code a bit more.
# We will use Object-Oriented Programming.
# We will create the game as an object, which can run its own actions (methods).
#
# First we define a class called TicTacToe that represents the game's "things" (board)
# and the game's behaviour (show, update) and its rules (is it a tie?, a win?).
#
# The "things" (e.g., the board) are represented by member variables, 
# which name starts with @. 
# By default, these are NOT visible outside the object.
#
# The actions and rules are presented by member methods.
# By default, these ARE callable outside the object.

class TicTacToe
	def initialize
		@board = [
			['_', '_', '_'],
			['_', '_', '_'],
			['_', '_', '_']
		]
	end

	def show
		for row in @board
			print row.join(' '), "\n"
		end
	end

	def is_a_legal_move? row, col
		row.between? 0,2 and col.between? 0,2 and @board[row][col] == '_'
	end

	def update player, row, col
		@board[row][col] = player
	end

	def is_a_tie?
		not @board.flatten.include? '_'
	end

	def is_a_winner? player
		for b in [ @board, @board.transpose ]
			for row in b
				if row.join == "#{player}#{player}#{player}"
					return true
				end
			end

			if [b[0][0],b[1][1],b[2][2]].join == "#{player}#{player}#{player}"
				return true
			end
		end

		false
	end
end




# Now the main part.

game = TicTacToe.new
game.show
player = 'X'

while true
	while true
		print "Player #{player}: make your move: "
		row, col = gets.chomp.split.map { |x| x.to_i }

		if game.is_a_legal_move?(row, col)
			break
		else
			put "Illegal move! Try again."
		end
	end

	game.update player, row, col
	game.show

	if game.is_a_winner?(player)
		puts "Player #{player} won!"
		break
	elsif game.is_a_tie?
		puts "Game is tied!"
		break
	end

	player = player == 'X' ? 'O' : 'X'
end
