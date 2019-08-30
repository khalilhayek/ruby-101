# Let's take a minute to review some of the methods that we've seed.

# Number methods:
3.positive?
3.negative?
3.zero?
3.odd?
3.even?
3.next
3.pred
3.between? 1,4
3.to_s	# this one converts the number 3 to the string '3'
3.to_f	# this one converts the integer 3 to the real number 3.0


# String methods.
'hello'.capitalize
'hello'.length
'hello'.reverse
'hello'.empty?
'hello'.start_with? 'Z'
'hello'.include? 'm'

# You remember that methods that return a true or false value
# have names that end with ?
# And you've seen that some methods take one or more arguments, like:
'hello'.start_with? 'Z'
3.between? 1,4

# Now you'll see that some methods have names that end with !
# For example, strings have two methods called .upcase and .upcase!
# What is the difference?
# Try these examples, see if you can figure it out.
myname = 'bunbuns'
my_capital_name = my_name.upcase
puts my_capital_name, my_name
my_name.upcase!
puts my_name

# Can you explain this?
# myname.upcase produces a copy of myname in all uppercase, 
# but myname itself is not changed.
# myname.upcase! changes the value stored inside myname.

# Try it with an array.
mynumbers = [2,4,6,8]
srebmunmy = mynumbers.reverse
puts mynumbers, srebmunmy
mynumbers.reverse!
puts mynumbers
