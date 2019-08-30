# Now let's put all that we've learned together, and write a more 
# interesting program.
# Do this:
# Print "What's your name?"
# Read the answer. Don't forget to remove the \n at the end.
# If the name is Bunbuns, print "Hello Bunbuns!" on a line by itself.
# Same if the name is Rusty.
# If the name is different, print "Do I know you?" on a line by itself.
# If the name is empty, stop.
# Otherwise, go back and repeat from the top.

# Try to write this by yourself and test it. 
# I have written a solution below, but I know you won't look until 
# you've tried it yourself first..

























while true
	print "What's your name? "
	name = gets.chomp

	if name.empty?
		break
	elsif name == "Bunbuns" or name == "Rusty"
		print "Hello ", name, "!\n"
	else
		print "Do I know you?\n"
	end
end


# And here's another way to write it.
# It makes an array out of the names we like, 
# then uses the array's .include? method to check if the name is 
# found in our array.
# This is useful if you have more than 2 names to compare, because
# it saves you from writing "or name == something" over and over again.
while true
	print "What's your name? "
	name = gets.chomp

	if name.empty?
		break
	elsif ["Bunbuns", "Rusty"].include? name
		print "Hello ", name, "!\n"
	else
		print "Do I know you?\n"
	end
end

