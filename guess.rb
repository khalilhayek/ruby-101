#!/usr/bin/ruby
MAX_TRIES = 5

while true
	small = rand(1..10)
	big = rand(15..25)
	secret = rand(small..big)
	num_tries = 0
	puts 'Guess my secret number, between %i and %i' % [small, big]
	while num_tries < MAX_TRIES
		print 'You have %i tries left. Guess a number: ' % (MAX_TRIES - num_tries) 
		num = gets.chomp.to_i

		if num == secret
			puts 'You won in %i tries!' % num_tries
			break
		elsif num > secret
			puts 'Too high!'
		elsif num < secret
			puts 'Too low!'
		end
	
		num_tries = num_tries + 1
	end
	
	print 'Continue playing? yes or no? '
	answer = gets.chomp
	if answer == 'no'
		break
	end
end
