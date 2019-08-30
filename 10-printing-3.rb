# Try this command.
print "one", "two", "three"

# Even though you separated the words by a comma and a space, they
# are printed without spaces between them. Why?

# How can you print them with a space between each 2 words?
# Here are a few ways.
print "one two three"
print "one", " ", "two", " ", "three"
print ["one", "two", "three"].join(" ")

# What happened in the 3rd line?
# That's right! We created an array containing the three words, then
# used the array's "join" method to join them using a " " in between.

