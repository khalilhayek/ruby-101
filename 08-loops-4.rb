# Some times, you need to break out of the loop.
# Say we want to stop the loop if a number is even.
for i in [3,45,18,49,21]
	if i.even?
		break
	else
		puts i
		puts "this one was odd"
	end
end

# Other times, you want to skip processing an element.
# Let's skip over the even number.
for i in [3,45,18,49,21]
	if i.even?
		next
	else
		puts i
		puts "this one was odd"
	end
end

# You can combine the two behaviours.
for month in ['jan','fev','mar','apr','may','jun']
	if month == 'fev'
		next
	elsif month == 'may'
		break
	else
		puts month
	end
end

# Note that 'break' and 'next' also apply to the 
# while, until and do loops.
