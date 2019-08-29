class Freq
	def initialize
		@frequencies = {}
		('a'..'z').each { |c| @frequencies[c] = 0 }
	end

	def run
		puts 'Type some text:'
		while ( input = gets.chomp ) =~ /^q$/
			process input
			puts 'Type some text:'
		end
		show
	end
	
private
	def process str
		str.downcase.each_char { |c| @frequencies[c] += 1 if c.between? 'a','z' }
	end
	
	def show
		p @frequencies.sort_by { |_,freq| -freq }
	end
end


if __FILE__ == $PROGRAM_NAME
	freqs = Freq.new
	freqs.run
end
	
