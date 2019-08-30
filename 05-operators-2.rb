# Arithmetic operators:
3 + 4
5 - 2
10 * 3
13 / 4		# This results in 3 because it's dividing whole numbers.
			# and taking the integer result.	
13 / 4.0	# This results in 3.25
13.0 / 4	# This results in 3.25
13.0 / 4.0	# This results in 3.25
10 % 3		# This is the "modulus" operator, it gives the remainder, 1.
3 ** 2		# The power operator, results in 9

# You can combine operators, but watch the precedence.
# Power is computed first, then multiplication and division,
# and finally addition and subtraction.
# ** has higher precedence than * and /.
# * and / have higher precedence than + and -
1 + 3 * 2		# Gives 7
1 + 3 ** 2 * 5	# Gives 46

# When in doubt, use parentheses to write exactly what you mean.
# The above expressions are equivalent to:
1 + (3 * 2)
1 + ((3 ** 2) * 5)

# Use parentheses if you want to change the order of executing the operations.
(1 + 3) * 2		# Gives 8
(1 + 3) ** (2 * 5) 	# Equal to 4**10 which gives 1048576

# Always remember: if you try to divide by 0 you'll get an error.

# Comparison operators for numbers:
3 == 4		# false
3 != 4		# true
3 > 4		# false
3 >= 4		# false
3 <= 4		# true
3 < 4		# true


