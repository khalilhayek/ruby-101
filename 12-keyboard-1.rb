# We need to save what the user types on the keyboard.
# Just like using puts for printing a string, 
# Ruby uses gets for "getting a string".

# gets will return everything that you type to the end of the line,
# Including the newline character \n which is created when you press ENTER.

line = gets
print line

# How can you get rid of the \n ?
# Luckily, strings have a method called "chomp" which removes the \n at the 
# end of the string. 
# Note 1: chomp won't remove a \n in the middle of the string.
# Note 2: chomp removes only the last \n. 
# If your string was "hi\n\n" then chomping it results in "hi\n".

# Back to our example:
line = gets.chomp
print line
