# There is another very powerful way to control printing, using print formats.
# Print formats are used consistently across many programming languages,
# and all UNIX and Linux systems.
# It is worth taking the time to learn them.

# Simply put, you use print/printf/puts then a format then the values.

print "The name is: %s, and the age is %d.\n" % [ 'Bunbuns', 3 ]

#     "----------------format---------------" % [ values ]

# The format string my contain text and any number of format specifications.
# Each format specification prints one value, in order.
# A format specification starts with %
# Here are some format specifications:

# %s		print a string.
puts "-- %s --" % 'Hello'

# %10s		print a string in 10 spaces, right-aligned.
puts "-- %10s --" % 'Hello'

# %10.10s	ditto, but clip it if the string is too long.
puts "-- %10s --" % 'OneTwoThreeFour'
puts "-- %10.10s --" % 'OneTwoThreeFour'

# %-10s		print a string in 10 spaces, left-aligned.
# %-10.10s	ditto, but clip it if the string is too long.
puts "-- %-10s --" % 'OneTwoThreeFour'
puts "-- %-10.10s --" % 'OneTwoThreeFour'

# Use %s also to print true/false values.
puts "-- %s -- %s --" % [ true, false ]

# %d		print an integer.
# %3d		print an integer in 3 spaces, right-aligned.
# %-3d		print an integer in 3 spaces, left-aligned.
# %03d		print leading 0 if the number doesn't fill the spaces.
puts "-- %d -- %3d -- %-3d -- %03d" % [5, 5, 5, 5]

# %f		print a float. 
# %.2f		print a float with 2 decimal points.
# %7.2f		ditto, with up to 4 digits before the decimal point.
puts "-- %f -- %.2f -- %7.2f --" % [ 123.4567, 123.4567, 123.4567 ]

