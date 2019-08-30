# You have learned that some variables are simple, like:
# name = 'Bunbuns', age = 3

# And also that some variables are arrays that contain lists of values.
# Let's learn more about arrays, their types, and how to use them.

# This is an empty array:
my_array = []

# This is an array that contains 2 names:
my_pets = ['Bunbuns', 'The GOAT']

# We can elements to this array:
my_pets.append 'Affe'
my_pets.append 'Camel'
my_pets.append 'Bisou'

# In Ruby, Python, C, and most other modern languages,
# array indexing starts with 0, i.e., the first element is at location 0 ...
puts my_pets[0]		# prints 'Bunbuns'

# .. and the last element is at location N-1 where N is the size of the array.
# In our example:
puts my_pets[2]		# prints 'Affed', because our array has 3 elements.

# You've probably guessed that to access the element in position x,
# we add this [x] to the end of the name of the array.

# In Ruby, we can also address the first and last element this way:
puts my_pets.first
puts my_pets.last

# Methods .count and .length will give you the number of elements in the array.
puts my_pets.count

# We can also have arrays of integers, floats, true/false, or mixed values.
# We can even have arrays of arrays.
my_mixed_bag = ['Bunbuns', 3, ['carrots', 'carrot cake'], true, 'sleep']
# What is the index of the first element?
# What is the index of the last element?
# Try printing the element in position 2!

# There are two ways to "walk" the array, i.e., access each element.
# The old way, using the index (position number):
# This is used in old languages like BASIC and FORTRAN.
# It is also used in modern languages like Ruby and Python.
for i in (0..my_pets.count-1)
	puts my_pets[i]
end

# And the new way, by pointing to the array elements directly.
# This is used in modern languages, and does not exist in old languages.
for p in my_pets
	puts p
end
