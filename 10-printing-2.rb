# How can you make print print a newline?
# How can you make puts print an additional newline?
# Simple, just pass it this newline character: "\n"
# Even though this looks like two characters, almost all computer languages
# treat it as a single special character, a newline:

print "hello", "\n"	# prints hello followed by a newline.
puts "hello"		# prints hello followed by a newline.
puts "hello\n"		# prints hello followed by 2 newlines.

# You can also embed "\n" inside another string. Try this:
print "hello\nyou\n\n"

# Another special character is the tab "\t"
print "\tHello\tyou!\n\n"

# All characters that start with \ are called "escape characters".
# Yup, that's right!

# Challenge: 
# How can you include \ in a string then without creating an escape character?
# Easy, escape it with another \
print "Here is a \\ inside a string!\n"
