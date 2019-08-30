# Just a bit of tidying up left.

# This file can be used in two ways:
# You can run this file to play the game, or
# you can include this file in another script, for example if you 
# create a script that asks users which game they want to play,
# then loads that game's module, then plays the game.

# For a module, all you need is the class definition.
# So, we will wrap the last two lines with an if/end statement
# that executes this code only if you run the file, but not when you 
# include the file as a module.
# See at the bottom for how this works.


class TicTacToe
private
	def initialize
		@board = [ ['_', '_', '_'], ['_', '_', '_'], ['_', '_', '_'] ]
		@player = 'X'
		@row, @col = nil, nil
	end

	def show
		@board.each { |row| print row.join(' '), "\n" }
	end

	def is_a_legal_move?
		@row.between? 0,2 and @col.between? 0,2 and @board[@row][@col] == '_'
	end

	def update
		@board[@row][@col] = @player
	end

	def is_a_tie?
		not @board.flatten.include? '_'
	end

	def is_a_winner?
		symbol = @player * 3

		[ @board, @board.transpose ].each do |b|
			b.each { |row| return true if row.join == symbol }
			return true if [b[0][0],b[1][1],b[2][2]].join == symbol
		end

		false
	end

	def input
		while true
			print "Player #{@player}: make your move: "
			@row, @col = gets.chomp.split.map { |x| x.to_i }
			return if is_a_legal_move?
			puts "Illegal move! Try again."
		end
	end

	def switch_players
		@player = @player == 'X' ? 'O' : 'X'
	end

public
	def play
		show
		while true
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
# __FILE__ is a special Ruby variable that contains the name of this file.
# $PROGRAM_NAME is special Ruby variable that contains the name
# of the program currently running.
# When you run this file, the two are equal, and this code is executed.
# When you run another file that then "includes" the contents of this file,
# the two are not equal, and this code is not executed.

if __FILE__ == $PROGRAM_NAME
	game = TicTacToe.new
	game.play
end

