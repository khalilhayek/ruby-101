# Let's take a bit of a deep dive into methods.
# We'll learn the difference between Parameters and Arguments.

def greet name			# name is a "parameter" of the method.
	puts "Hello #{name}!"
end

greet 'Bunbuns'			# 'Bunbuns' is an argument to the method.
greet 'Rusty'


# When you type: greet 'Bunbuns'
# the program calls (i.e., executes) the method 'greet'
# and passes to it the argument 'Bunbuns'.

# When the method 'greet' is called (i.e., starts executing), 
# it receives a "parameter" called "name", 
# and inside it (its value) is the string 'Bunbuns'.

