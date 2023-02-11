# The result of the following statement will be an error:

# puts "the value of 40 + 2 is " + (40 + 2)

# Why is this and what are two possible ways to fix this?

# ANS:
# This line is telling the computer to print out the string and then also print
# the string that results from adding the int 42 to the int 2. But... there isnt
# a string that results from that operation. An int results.

# FIX 1: INTERPOLATION
puts "the value of 40 + 2 is #{(40 + 2)}"

# FIX 2: to_s method
puts "the value of 40 + 2 is " + (40 + 2).to_s