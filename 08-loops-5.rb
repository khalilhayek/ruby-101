# Challenge: How do you write a loop that runs forever?
# First, you may ask: Why would anyone want to write a loop that runs forever?
# That is an excellent question! 
# Can you think of some applications where a forever loop is required?
# Here are a few:
# - An aquarium temperature controller: it repeatedly checks the temperature
#   and adjusts the heater controls. 
# - An operating system like Windows and Linux: it repeatedly checks for
#   keyboard or mouse input, then sends them for processing.

# So, how do we do it?
# Easy! Recall that a 'while' loop repeats while a condition is true.
# So, just give it a condition that is always true, and it will run forever:
while 3 == 3
	puts "It's true!"
end

# Or even simpler:
while true
	puts "It's true!"
end

# Or, reverse the condition:
until 3 != 3
	puts "It's not false yet!"
end

# Which is equal to:
until false
	puts "It's not false yet!"
end

# Or simply use a do loop:
loop do
	puts "This one just runs forever!"
end


# Now careful: these loops will consume all the CPU cycles on your PC,
# and you will have to stop them with a Control-C interrupt.
# Of course, in real applications, every forever loop has an exit mechanism,
# such as asking the user to type q if she wants to quit.
