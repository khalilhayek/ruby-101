# The do loop is similar to the while and until loops, 
# but it always runs at least once, since there is no 
# test at the top.

# This is a "do loop".
i = 0
loop do
	puts i
	i += 1
	if i == 10
		break
	end
end
puts i

