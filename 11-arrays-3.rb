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

# Often, you would use a hash element as a record:
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

# Each hash element consists of a 'key' and a 'value'.
puts pet2.keys
puts pet2.values
# To print the key and value of each element:
# Method 1:
pet2.each_pair { |k,v| puts "#{k} is #{v}" }
# Method 2:
for k in pet2.keys
	v = pet2[k]
	puts "#{k} is #{v}"
end



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
