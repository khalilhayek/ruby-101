# Let's move the asking for user input to its own method.
# Create a new method called "input".

class TicTacToe
	def initialize
		@board = [ ['_', '_', '_'], ['_', '_', '_'], ['_', '_', '_'] ]
	end

	def show
		@board.each { |row| print row.join(' '), "\n" }
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
		symbol = "#{player}#{player}#{player}"

		[ @board, @board.transpose ].each do |b|
			b.each { |row| return true if row.join == symbol }
			return true if [b[0][0],b[1][1],b[2][2]].join == symbol
		end

		false
	end

	# New method for prompting the player and capturing his input.
	def input player
		while true
			print "Player #{player}: make your move: "
			row, col = gets.chomp.split.map { |x| x.to_i }

			return row, col if is_a_legal_move?(row, col)

			puts "Illegal move! Try again."
		end
	end
end


# Now the main part.

game = TicTacToe.new
game.show
player = 'X'

while true
	# Get the player's move.
	row, col = game.input player

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
