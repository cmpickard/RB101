# In other practice problems, we have looked at how the scope of variables 
# affects the modification of one "layer" when they are passed to another.

# To drive home the salient aspects of variable scope and modification of 
# one scope by another, consider the following similar sets of code.

# What will be printed by each of these code groups?

A)
def mess_with_vars(one, two, three)
  one = two
  two = three
  three = one
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}"
puts "two is: #{two}"
puts "three is: #{three}"

# ANSWER:
# one is one
# two is two
# three is three
# re-assinment in the method doesn't mutate the original objects, we're just
# creating new objects and pointing out copy variables (the ones created when
# we call the method) at those new objects. Then we return "three". Nothing
# is done with that return value. We then print the (unchanged!) objects stored
# in our original 3 vars


B)
def mess_with_vars(one, two, three)
  one = "two"
  two = "three"
  three = "one"
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}"
puts "two is: #{two}"
puts "three is: #{three}"

# ANSWER:
# one is one
# two is two
# three is three
# re-assinment in the method doesn't mutate the original objects.


C)
def mess_with_vars(one, two, three)
  one.gsub!("one","two")
  two.gsub!("two","three")
  three.gsub!("three","one")
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}"
puts "two is: #{two}"
puts "three is: #{three}"

#ANS:
# one is: two
# two is: three
# three is: one
# the gsub! method mutates the one, two, three objects -- THE VERY SAME objects
# that our one, two, three vars (the ones outside the method) point to. Thus,
# those vars now point to changed strings.