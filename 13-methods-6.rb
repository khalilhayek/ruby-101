# We will now learn a bit more about Parameters and Arguments.
# Let's go back to our old greeting function. 
# But we'll mess it up a bit. 
# The method will change the value of the parameter itself.
def greet name, food
	food = 'Pizza'
	puts "Hello #{name}, I know you like #{food}!"
end

# Notice that greet has changed the value of food. 
# Let's call it and see.

myname, myfood = 'Affe', 'bananas'
greet myname, myfood
print "#{myname} #{myfood}"

# At the start, myfood contains 'bananas'
# When you called greet, you passed myfood to it, which contained 'bananas'
# The program makes a copy of myfood, and passes it on greet.
# When greet started, it received a parameter called food 
# which contained a copy of the variable myfood.
# greet is not working with the variable 'myfood', 
# but with a copy of its value. 
# When greet changed the value of food, myfood was not affected.

# This is called "pass by value": the value of the arguments gets passed 
# to the method, not the argument itself.
