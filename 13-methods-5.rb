# Let's take another deep dive into methods.
# We will learn about Scope.

def print_squares upto
	for i in (1..upto)
		sq = i*i
		puts "#{i} squared is #{sq}"
	end
end

# i here is a Local Variable, 
# i.e., it is local to the method print_squares
# It does not exist outside it.
# Try this:

i = 5
print_squares 4
puts i

# The value of i in the main program is still 5. 
# In fact it has never changed!
# It is not the same i that is in print_squares.
# The i above in the 'global' scope, the i in print_squares is in the
# scope of print_squares.
# 'Scope' is the area where a variable is defined. 
