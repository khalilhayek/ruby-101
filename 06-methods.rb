# In Ruby, all variables are objects.
# An object can hold values, like a variable, but can 
# also take actions.
# Here are some actions that number objects can take. 
# Type them and see what values they return.
3.positive?
3.zero?
0.zero?
5.negative?
100.next
100.pred
55.odd?
55.even?
55.between? 40,100

# Here are some actions that string objects can take. 
# Type them and see what values they return.
'hello'.capitalize
'hello'.upcase
'HeLLo'.downcase
'hello there'.length
'hey you'.upcase.reverse
'hello'.include? 'e'
'hello'.start_with? 'H'

# When an object takes an action, it is executing a "method".

# See all the methods that an object can take.
# The method .public_methods lists all the methods of an object.
# .sort sorts those methods.
55.public_methods.sort
'hello'.public_methods.sort

# As you saw, you can even cascade methods. 
# They will be applied from left to right: 
'hey you'.upcase.reverse
# This will first convert all the letters to capitals, 
# then reverse the string.
# In this case you could also have written 
# 'hey you'.reverse.cascade
# but changing the order of methods does not always 
# give the same results.

# There are also methods for arrays.
a = [2,4,6,8]
a.length
a.count		# this is the same as .length
a.reverse
a.first
a.last
a.empty?
a.include? 5
a.append 10		# adds a new element, 10, to the end of the array.
a << 10			# same as .append
a.prepend 0		# adds a new element, 0, to the start of the array.
a.shuffle
a.max
a.min
a.sum			# sums all the elements in the array
a.sort			# sorts the array.


# Notice that methods that return true or false have a 
# name that ends with ?


