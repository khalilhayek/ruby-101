# In Ruby, arrays have methods .min, .max, and .sum.
# These are useful when the array contains integers and/or floats.

# We have recorded the noon-time temperature for every day of the the month.
# We saved them in an array, 31 values, one for each day.
# Since I am too lazy to write down 31 values, I'll generate them at random.

temps = []
for day in (0..30)
	temps[day] = rand(22..35)
end

# Now we want to find the highest and lowest temperatures,
# and the average temperature for this month.
# Can you write code to do this?
# Try. After you've tried, you can look at my code below.















# You can do it the long way, by sorting the array to find the minimum and
# maximum, and by summing and dividing to find the average.
# But I'll do it the lazy way by exploiting some methods of Array objects.
min = temps.min
max = temps.max
average = temps.sum / temps.count
