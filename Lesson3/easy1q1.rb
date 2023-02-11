=begin
What would you expect the code below to print out?

numbers = [1, 2, 2, 3]
numbers.uniq

puts numbers

ANS:
the .uniq method returns a new array consists of all the unique (non-repeated)
elements from the calling object.
BUT we didn't actually assign that array to anything.
the numbers array is unchanges, so we'd get
1
2
2
3
=end
