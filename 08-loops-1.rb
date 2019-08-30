# Conditions and Loops are the two main ways that 
# allow you to control how a program runs.
# That's why conditions and loops are called "Flow Control".

# Loops are used for repeating something forever, or
# until we decide to stop.

# Here are some examples of loops.

# Let's print all the numbers from 1 to 5
for i in (1..5)
	puts i
end
# This is called a loop. 
# i is the "loop variable". Its value changes everytime around the loop.

# Let's print all the letters from 'a' to 'e'
for c in ('a'..'e')
	puts c
end

# Let's print the letters in uppercase.
# There are two ways to do this.
# Here's one way:
for c in ('A'..'E')
	puts c
end

# Can you write the other way?

# Here's a range:
r = (1..14)
# Can you write a short program that ignores the odd numbers in this range, 
# but prints the square of each even number?
