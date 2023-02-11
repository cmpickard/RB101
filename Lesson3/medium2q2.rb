#Let's take a look at another example with a small difference in the code:

a = 42
b = 42
c = a

puts a.object_id
puts b.object_id
puts c.object_id

# ANSWER:
# some number
# that same number
# that same number
# that's because numbers in ruby are immutable objects. so assigning a to 42
# doesn't create a 42 int which can then be modified. it points to the immutable
# obj, 42.
# BETTER: one side-affect of immutability in Ruby is UNIQUENESS. Precisely b/c
# an immutable object cannot be changed, you never need 2 of them. 