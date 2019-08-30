# Can we make a new method called play?
# Then all the user has to do is .initialize then .play! Two lines.
# Now we don't need to have the attr_reader, since we don't need
# to access the player's name from outside this class.

class TicTacToe
	def initialize
		@board = [ ['_', '_', '_'], ['_', '_', '_'], ['_', '_', '_'] ]
		@player = 'X'
	end

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

	def switch_players
		@player = @player == 'X' ? 'O' : 'X'
	end

	# This is the new method that plays the game.
	# It calls other member methods and access
	# member variables.
	def play
		show
		while true
			row, col = input
			update row, col
			show

			if is_a_winner?
				puts "Player #{@player} won!"
				break
			elsif is_a_tie?
				puts "Game is tied!"
				break
			end

			switch_players
		end
	end
end


# Now the main part.

game = TicTacToe.new
game.play

