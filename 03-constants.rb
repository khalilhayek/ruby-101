# In some cases, you will need to refer to the same value 
# over and over, and it will never change. 
# These are called constants. Their names are written in 
# all capitals, and can include underscores and numbers.
# You can not change the value of a constant.
COUNTRY = 'Bunnyland'
FAV_COLOR = 'orange'
NUMBER_1_FOOD = 'carrots'


# The two lines below are equivalent:
bunbuns_country = "Bunnyland"
bunbuns_country = COUNTRY

# But, you ask, if Bunbun's favourite food is carrots, it will
# never change, then why can't I simply write 'carrots' every
# time that I refer to the favourite food? Why do I have 
# to declare the constant NUMBER_1_FOOD = 'carrots' and then
# use NUMBER_1_FOOD instead?

# This is an excellent question! Here's the answer:
# If you only use 'carrots' once or twice in your program, 
# then go ahead and write 'carrots'. 
# If ever you want to change that to 'peeled carrots', it's 
# easy to change it in one or two places.
# But if you have it in 20 places in your program, then it
# becomes a chore to find them all and change them.
# Then it's easier to just declare the constant.

# Makes sense?
