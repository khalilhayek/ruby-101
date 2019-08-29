class Freq
	def initialize
		@frequencies = {}
		('a'..'z').each { |c| @frequencies[c] = 0 }
	end
	
	def process str
		str.downcase.each_char { |c| @frequencies[c] += 1 if c.between? 'a','z' }
	end
	
	def show
		p @frequencies.sort_by { |letter,freq| -freq }
	end
end

if __FILE__ == $PROGRAM_NAME
	freqs = Freq.new
	input = gets.chomp
	while input !~ /^q$/
		freqs.process input
		input = gets.chomp
	end
	freqs.show
end
	
