# Khalil Hayek - 2019.08.28
# TicTacToe game.
# I developed this as part of a tutorial for children on programming with Ruby.

class TicTacToe
	def initialize
		@board = [ ['_', '_', '_'],['_', '_', '_'],['_', '_', '_'] ]
		@player = 'X'
		@row, @col = nil, nil
	end
	
	def play
		show
		while true
			input		
			update
			show
			if is_won?
				puts "Congratulations! Player #{@player} won!"
				break
			elsif is_tied?
				puts "It's a tie!"
				break
			end
			
			switch_player
		end			
	end

private
	def show
		@board.each { |r| print r.join(' '), "\n" }
	end
	
	def is_legal_move?
		@row.between? 0,2 and @col.between? 0,2 and @board[@row][@col] == '_'
	end
	
	def update
		@board[@row][@col] = @player
	end
	
	def is_tied?
		not @board.flatten.include? '_'
	end
	
	def is_won?
		three = @player * 3
		[@board, @board.transpose].each do |b|
			return true if [ b[0][0], b[1][1], b[2][2] ].join == three
			b.each { |r| return true if r.join == three }
		end
		false
	end
	
	def switch_player
		@player = @player == 'X' ? 'O' : 'X'
	end
	
	def input
		while true
			print "Player #{@player} make your move: "
			@row, @col = gets.chomp.split.map { |c| c.to_i }
			return if is_legal_move?
			puts "Illegal move! Try again."
		end
	end
end
	
if __FILE__ == $PROGRAM_NAME	
	game = TicTacToe.new
	game.play
end