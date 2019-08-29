#!/usr/bin/ruby


while true
	a = rand 16..114
	b = rand 21..132
	op = rand 1..2
	
	if op == 1 
		total = a+b
		op_name = 'somme'
	elsif op == 2
		total = a - b
		op_name = 'difference'
	end 
	
	puts "Quelle est la %s de %i et %i ?" % [op_name,a,b]
	guess = gets.chomp.to_i
	
	if guess == total
		puts "##########"
		puts "# Bravo! #"
		puts "##########"
	else
        puts "XXXXXXXXXXX"	
		puts "X Malheur X"
	    puts "XXXXXXXXXXX"
	end	
	print 'Jouer encore? oui ou non? '
	answer = gets.chomp
	if answer == 'non'
		break
	end
end
