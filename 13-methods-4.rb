# Sometimes a method takes the same value most of the time.
# Consider this function:
def greet name, state
	puts "Hi #{name}, I see that you are #{state} today!"
end


# And this is how you call this method:
greet 'Bunbuns', 'happy'
greet 'Bisou', 'hungry'
greet 'Affe', 'happy'
greet 'Wood Duck', 'happy'
greet 'Camel', 'happy'
greet 'The GOAT', 'happy'
greet 'Gimli', 'grumpy'

# You notice that in most cases, we call it with the parameter 'state'
# having the value of 'happy'.
# So let's redefine this method and save ourselves some typing.
def greet2 name, state='happy'
	puts "Hi #{name}, I see that you are #{state} today!"
end

# Now we call it:
greet2 'Bunbuns'
greet2 'Bisou', 'hungry'
greet2 'Affe'
greet2 'Wood Duck'
greet2 'Camel'
greet2 'The GOAT'
greet2 'Gimli', 'grumpy'

# Get it? If the second argument is missing, the method will fill in 'happy'.
# This is called the "default parameter".

# We can still call the method and use the argument value 'happy', 
# if we still don't mind a bit of extra typing.
greet2 'Bunbuns', 'happy'
# and
greet2 'Bunbuns'
# have the same result.
