# These are some operators that you are already familiar
# with from school.
# + - * / 

# Ruby and other programming languages have many operators.

# = This is called the "assignment" operator: it takes the 
# value of what's on its right, and assigns it to the variable
# that's on it's left.
name = 'Bunbuns'
age = 2
food, drink = 'carrots', 'carrot juice'
lucky_numbers = [2,4,8]


# == is the "equality test" operator: it returns a value 
# of true or false.
# != is the "inequality test". It is the opposite of --

name == 'Bunny'	 # returns false: we all know it's Bunbuns.
name != 'Bunny'	 # returns true
name == 'Bunbuns'   # returns true

# This returns false because one of them is false.
name == 'Bunbuns' and food == 'bananas' 

# This returns true because one of them is true.
name == 'Bunbuns' or food == 'bananas'  

# This returns true.
age == 2

# Here are all the comparison operators:
# ==   !=   >   >=   <   <=
# Are they obvious?

# You can also compare arrays.
lucky_numbers == [2,4,8]	# returns true


