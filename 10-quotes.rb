# It's time now to learn the difference between single 
# and doube quotes.
# Remember that I said earlier that:
# - in Ruby, strings are surrounded by single quotes or 
# double quotes.
# Well, the two are not always equivalent.

# 'Bunbuns' and "Bunbuns" are the same string.
# 'Bunbuns!' and "Bunbuns!" are the same string.
# 'Bunbuns\n' is exactly that, but "Bunbuns\n" is 
# Bunbuns followed by a newline.

# Similarly:
name = 'Rusty'

# This prints: Hello #{name} and bye\n! followed by a new line.
print 'Hello #{name} and bye!\n'

# This prints: Hello Rusty and bye! followed by a new line.
print "Hello #{name} and bye!\n"

# Remember:
# Strings 'like this' are literal, literally!
# Strings "like this" are interpreted.
#
# You can actually save a tiny bit of CPU time by single-quoting 
# literal strings like 'Bunbuns', because when you double-quote
# them, the computer will search inside the string for variable
# values and escape characters.
