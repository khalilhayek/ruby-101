# Some times you write a method to do something:
def greet name
	print "Hello ", name, "\n"
end

# Other times you write a method to return a value.
def square x
	return x * x
end

# And at yet other times, you write a method to do things then return a value.
def tax value
	puts "The tax on this is 15%"
	return x * 1.15
end
 
# The returned value from a method is the value of the last statement.
# You do not have to specifically write 'return' in the last line of the method.
def cube x
	x * x * x
end

# The method optionally takes parentheses around the arguments and parameters.
def double(x)
	2 * x
end

# Here the () are optional.
puts double 4
puts double(8)

# But here the () are mandatory:
puts 5 + double 4	# error
puts 5 + double(4)	# OK

# And here, having the () or not makes a difference in the value:
puts double 4 + 5	# prints 18, i.e., double 9
puts double(4) + 5	# prints 13

