# One last thing regarding the construction of this class, and an
# important concept in Object Oriented Programming (OOP): data hiding.
# All that you need to play the game are the last two lines of this file:
# game = TicTacToe.new
# game.play
# Nobody needs to call any of the other methods.
# So, let's declare them as private methods so nobody can call them.
# Below we add "private" and "public" declarations to the class.


class TicTacToe
# The methods below this line are private.
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

# All the methods below are public.
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

game = TicTacToe.new
game.play

