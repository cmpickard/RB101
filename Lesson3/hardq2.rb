# What is the result of the last line in the code below?
greetings = { a: 'hi' }
informal_greeting = greetings[:a]
informal_greeting << ' there'

puts informal_greeting  #  => "hi there"
puts greetings

# ANS:
# "hi there"
# the informal_greeting variable points at the 'hi' string object. THE VERY SAME
# object that the greetings array points to.
# the << is a mutating method, so we change the 'hi' object with code on line 4.
# that means the gretings array is now pointing out that changed object.