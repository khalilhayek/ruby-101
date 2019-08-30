# Now that player is an internal variable, and does not need to be seen
# outside the class, we can eliminate the attr_reader declaration.

# Can we also make the user's selected move, i.e., row and col, private 
# variables, contained completely within the class?

class TicTacToe
	def initialize
		@board = [ ['_', '_', '_'], ['_', '_', '_'], ['_', '_', '_'] ]
		@player = 'X'

		# Initialize the row and column to an invalid value.
		@row, @col = nil, nil
	end

	def show
		# Note: this "row" is a block variable, different from 
		# the private member variable @row.
		@board.each { |row| print row.join(' '), "\n" }
	end

	def is_a_legal_move?
	 	# We no longer need to pass the row and col as arguments.
		@row.between? 0,2 and @col.between? 0,2 and @board[@row][@col] == '_'
	end

	def update
	 	# We no longer need to pass the row and col as arguments.
		@board[@row][@col] = @player
	end

	def is_a_tie?
		not @board.flatten.include? '_'
	end

	def is_a_winner?
		# Notice how we generate this sequence of 3 characters:
		symbol = @player * 3

		# Note: this "row" is a block variable, different from 
		# the private member variable @row.
		[ @board, @board.transpose ].each do |b|
			b.each { |row| return true if row.join == symbol }

			return true if [b[0][0],b[1][1],b[2][2]].join == symbol
		end

		# So the player did not win.
		false
	end

	def input
		while true
			print "Player #{@player}: make your move: "
			@row, @col = gets.chomp.split.map { |x| x.to_i }

			# No need to return row,col; just save the values
			# to the member variables @row, @col and return.
			return if is_a_legal_move?

			puts "Illegal move! Try again."
		end
	end

	def switch_players
		@player = @player == 'X' ? 'O' : 'X'
	end

	def play
		show
		while true
			# Get the player's move, update the board, display it again.
			# Notice how input doesn't return a value, and 
			# update doesn't take arguments.
			# All the methods are using member variables, which 
			# they access directly inside the methods.
			input
			update
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

