# When do you use arrays (lists), and when do use hashes (records) ? 
# It depends.
# If you are making a list and you will process it element by element,
# from the first to the last, then use an array.
# For example, if you're recording temperatures for each day of the year,
# or the wins and losses of your soccer team:
temps = [ 22, 25, 26, 23, 24, 28, 30, 32, 31, 26 ]
wins = [ true, true, false, false, true, false, true ]

# Use a hashe for records, as we've seen in the previous lesson.

# Also use hashes if you're keeping track of wins and losses for specific games.
wins = { 
	'OTFC' => false, 
	'Ottawa Internationals' => true, 
	'Kingston Gaels' => false, 
	'Seaway Valley' => true
}
# Then you can check for wins, for example:



