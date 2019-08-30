# The for loop iterates over a set of values.
# There are two more kinds of loops: "while loops",
# "until loops", and "do" loops.

# This is a "while loop".
i = 0
while i < 5
	puts i
	i += 1
end
puts i

# This is an "until loop".
i = 0
until i == 5
	puts i
	i += 1
end
puts i

# Both loops do exactly the same thing.
# And at the end of both loops, i has 5.
# The difference is the condition for exiting the loop.
