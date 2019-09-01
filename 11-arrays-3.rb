# We can also have arrays where the index is not a number.
# In some languages these are called hashes or associative arrays.

name_food = {}

name_food['Bunbuns'] = 'carrots'
name_food['The GOAT'] = 'everything'
name_food['Affe'] = 'bananas'
name_food['Bisou'] = 'you'

puts name_food

# Note how we used {} to declare the array, but used [] to access its elements.

# If we know all the values at the start, we can declare the hash this way:
name_food = {
	'Bunbuns' => 'carrots',
	'The GOAT' => 'everything',
	'Affe' => 'bananas',
	'Bisou' => 'you'
}

# Each entry in a hash consists of a key and a value.
# In the examples above, 'Bunbuns' is a key, and 'carrots' is a value.
# To print all the keys:
puts name_food.keys

# To print all the values:
puts name_food.values

# To print the value of Affe's food:
puts name_food['Affe']

# To print the key and value of each element:
# Method 1: get a list of all the keys, then use each 
# key to get its associated value.
for k in pet2.keys
	v = pet2[k]
	puts "#{k} is #{v}"
end

# Method 2: Use a special ruby method called .each_pair
# which gets the key and value of each entry.
pet2.each_pair { |k,v| puts "#{k} is #{v}" }






# Often, you would use a hash element as a record, to record multiple bits of 
# information about the same object, person, or pet:
pet1 = {
	'name' => 'Bunbuns',
	'age' => 2,
	'nice' => true,
	'food' => 'carrots'
}

pet2 = {
	'name' => 'The GOAT',
	'age' => 8,
	'nice' => true,
	'food' => 'everything'
}


# And in real applications, you would have a list of records, 
# i.e., an array of hashes:

my_pets = [
	{
		'name' => 'Bunbuns',
		'age' => 2,
		'nice' => true,
		'food' => 'carrots'
	},
	{
		'name' => 'The GOAT',
		'age' => 8,
		'nice' => true,
		'food' => 'everything'
	}
]

# Now we can do these operations:
puts my_pets.first
puts my_pets[1]
puts my_pets[1]['food']
my_pets.append {
		'name' => 'Affe',
		'age' => 40,
		'nice' => true,
		'food' => 'bananas'
}
my_pets.append {
		'name' => 'Bisou',
		'age' => 40,
		'nice' => false,
		'food' => 'you'
}
for p in my_pets
	puts p['food']
end
puts my_pets.select { |p| p['nice'] == true }
