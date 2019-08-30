# Now you know how to ask the user for input, then print it.
print "What's your name? "
name = gets.chomp
print "I know you, ", name, "!\n"

# Cool. Is there another way to simplify the printing? 
# Try this:
print "What's your name? "
name = gets.chomp
print "I know you #{name}!\n"
puts "I know you #{name}!"

# You see? You can embed a variable inside a string, just surround it with #{}
# What's the difference between these puts statements?
name = "Bunbuns"
puts "I know you name"
puts "I know you #{name}"
# OK, I'm glad you understand this difference.
