# We learned that:
# - for loops iterate over a range or a number of elements,
# - while loops repeat while a condition is true,
# - until loops repeat until a condition is true,
# - do loops repeat until there is a 'break',

# We also learned that:
# - next jumps to the start of the loop,
# - break exits the loop.

# Here are the basic loop constructs. You will find similar 
# constructs in every programming language.

for x in some_set_of_value
	do_something
end

while something_is_true
	do_something
end

until something_is_true
	do_something
end

loop do
	do_something
	if some_condition
		break
	end
end

# And each of these constructs can also have in it:
	if some_condition
		break
	elsif another_condition
		next
	end
