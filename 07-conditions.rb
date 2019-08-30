# These are your first small programs in Ruby.
# Type each one and run it.

puts "Hello, world!"

# Bunbun's vital statistics!
name, color, age, likes_carrots = 'Bunbuns', 'gray', 2, true
puts name, color, age, likes_carrots

# Bunbun's getting older!
age += 1
puts name, color, age, likes_carrots

# Now we will learn how to test for things.
# This is called conditionals.

# How old is she again?
if age > 2
	puts "She's old!"
elsif age > 0
	puts "She's young!"
else
	puts "She's a foetus!"
end

# Does she like carrots?
if likes_carrots == true
	puts "she does like carrots"
end

# You can also write it like this:
if likes_carrots
	puts "she does like carrots"
end

# You can also test if Bunbuns doesn't like carrots.
if not likes_carrots
	puts "she does not like carrots"
end

# You can also write this one like this:
if ! likes_carrots
	puts "she does not like carrots"
end


# So here are the different ways to test things with IF:
# 1. The simple IF
if something then
	some_action
end

# 2. The IF / ELSE
if something then
	some_action
else
	another_action
end

# 3. The IF / ELSE IF / ELSE
if condition1 then
	action1
elsif condition2 then
	action2
elsif condition3 then
	action3
else
	action4
end

# The "then" is optional but helps reading the program.
