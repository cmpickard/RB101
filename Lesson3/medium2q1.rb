# Every object in Ruby has access to a method called object_id, which returns a
# numerical value that uniquely identifies the object. This method can be used 
# to determine whether two variables are pointing to the same object.

# Take a look at the following code and predict the output:

Copy Code
a = "forty two"
b = "forty two"
c = a

puts a.object_id
puts b.object_id
puts c.object_id

# ANS
# some number
# a diff number
# same as the first number
# that's b/c Ruby creates a new object on line 9, rather than searching through
# all the existing objects to see if an identical one already exists.