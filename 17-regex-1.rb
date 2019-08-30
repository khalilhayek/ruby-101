# In Ruby, Python, and many other modern languages, 
# a 'Regex' is a Regular Expression.
# This is used widely to match and substitute patterns in strings.

# In Ruby and other languages, the regex is usually surrounded by /

# This is a regex: /user/

# /[a-d]/		a regex of a single character, between a and d.
# /[abcd]/		same.
# /[a-d,A-D]/	a single character, between a and d, or A and D.
# /[abcdABCD]/	same.
# /[a-d]/i		same. (the /i means "ignore case").
# /[0-9]/		a single digit.
# /[a-z,0-9]/	a single alphanumeric character, lowercase.
# /[a-z,0-9]/i	a single alphanumeric character, case ignored.
# / /			a space.
# /./			any character (including a space).
# /\./			a .	Note how we "escped it" with a \
# /\//			a /	Note how we "escped it" with a \
# /\t/			a tab
# /[a-z]+/		one or more lowercase letters.
# /[a-z]*/		zero or more lowercase letters.
# /[a-z]?/		zero or one lowercase letters.
# /[a-z]{4}/	4 lowercase letters.
# /[a-z]{1,4}/	1 to 4 lowercase letters.


