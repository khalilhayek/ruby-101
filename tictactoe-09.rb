# Now the game object itself will keep track of the current player,
# and will have a method to switch players at the end of each round.
# attr_reader: player : this gives a method called .player which 
# reasonably enough gives the name of the current player. It's useful
# for printing the name of the winner!

class TicTacToe
	def initialize
		@board = [ ['_', '_', '_'], ['_', '_', '_'], ['_', '_', '_'] ]
		# Create a new member variable to store the current player's name.
		@player = 'X'
	end

	# This allows the value of @player to be read by calling
	# the .player attribute, see below, when congratulating the winner.
	attr_reader :player

	def show
		@board.each { |row| print row.join(' '), "\n" }
	end

	def is_a_legal_move? row, col
		row.between? 0,2 and col.between? 0,2 and @board[row][col] == '_'
	end

	def update row, col
		@board[row][col] = @player
	end

	def is_a_tie?
		not @board.flatten.include? '_'
	end

	def is_a_winner?
		symbol = "#{@player}#{@player}#{@player}"

		[ @board, @board.transpose ].each do |b|
			b.each { |row| return true if row.join == symbol }
			return true if [b[0][0],b[1][1],b[2][2]].join == symbol
		end

		false
	end

	def input
		while true
			print "Player #{@player}: make your move: "
			row, col = gets.chomp.split.map { |x| x.to_i }

			return row, col if is_a_legal_move?(row, col)

			puts "Illegal move! Try again."
		end
	end

	# New method to switch players. 
	# Call it after each round.
	def switch_players
		@player = @player == 'X' ? 'O' : 'X'
	end
end


# Now the main part.

game = TicTacToe.new
game.show

while true
	row, col = game.input
	game.update row, col
	game.show

	if game.is_a_winner?
		# game.player refers to the @player member variable
		# inside the game object.
		puts "Player #{game.player} won!"
		break
	elsif game.is_a_tie?
		puts "Game is tied!"
		break
	end

	game.switch_players
end
