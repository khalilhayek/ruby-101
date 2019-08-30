# Compacting the code a bit.
# Create a string of the player's winning streak (either OOO or XXX)
# and use it when checking for a win.
# Use Ruby style iterations (.each) instead of for... where possible.

class TicTacToe
	def initialize
		@board = [ ['_', '_', '_'], ['_', '_', '_'], ['_', '_', '_'] ]
	end

	def show
		# Ruby-style iteration.
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
		# Handy shortchut. Instead of repeating this.
		symbol = "#{player}#{player}#{player}"

		[ @board, @board.transpose ].each do |b|
			# Ruby-style iteration.
			b.each { |row| return true if row.join == symbol }
			return true if [b[0][0],b[1][1],b[2][2]].join == symbol
		end

		# So the player did not win.
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

		# Replace the if/else with a short if.
		break if game.is_a_legal_move?(row, col)

		put "Illegal move! Try again."
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
