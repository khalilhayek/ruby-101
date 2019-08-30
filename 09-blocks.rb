# In ruby, there is the concept of a "block" of code.
# The block has its own "block variable", similar to
# a "loop variable".
# But the block variable exists only inside the block. 
# If you try to print it or use it outside the block, 
# it does not exist.
# The first time you use a block variable, it has to 
# appear between two pipes '|'

# This is a block:
(1..5).each do |i|
	puts i+5
end

# This is the same block:
(1..5).each { |i| puts i+5 }

# If the block fits on one line, use the {...}
# If the block must take more than one line, use the do...end 

# break and continue apply to blocks the same way they 
# apply to loops.

# At the end of the blocks above, i is not defined. 
# If you try to use it or print it, you'll get an error.

# Lists and arrays have some methods that work on blocks.
[1, 5, 8, 10, 13, 20, 7, 24, 9].select { |i| i.even? }
# The above produces: [8, 10, 20, 24]

mylist = ['Bunbuns', 'Rusty', 'Affe', 'The GOAT', 'Alex']
puts mylist.select { |p| p.start_with? 'A' }.sort
