# You can create your own methods. They are useful when you have to repeat
# something over and over and over.

# A method 
# - starts with "def" and the method name, 
# - does some work, 
# - ends with "end"

# Here's a simple method. It prints a greeting. 
def greet
	puts 'Hello!'
end

# Now you can call it 10 times.
for i in (1..10)
	greet
end


# That was a boring method. Let's make it smarter.
# We'll pass a name to it, and it will print a funny greeting!
def greet2 name
	puts "Hello #{name.reverse.capitalize}!"
end

# Now call it 10 times.
for i in (1..10)
	greet2 'Bunbuns'
end


# Let's write a method that takes 2 parameters.
def greet3 name, food
	puts "Hello #{name.reverse.capitalize}!"
	n = rand(10)
	puts "You get #{n} #{food}!"
end
# Note: rand(10) will produce a random number between 0 and 9.

# Now call this one.
greet3 'Bunbuns', 'carrots'
greet3 'Affe', 'bananas'
greet3 'Datschie', 'Zwetchgendatshie'
greet3 'Wood Duck', 'gummy worms'
