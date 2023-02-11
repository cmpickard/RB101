=begin
Q:
Describe the difference between ! and ? in Ruby. And explain what would happen 
in the following scenarios:

i. what is != and where should you use it?
ii. put ! before something, like !user_name
iii. put ! after something, like words.uniq!
iv. put ? before something
v. put ? after something
vi. put !! before something, like !!user_name

ANS:
i) != means "does not equal" and you'd use it when you wanted to assert that the
operand on the left does not equal the operand on the right.
e.g.
2 != 3
what_i_had_for_breakfast =! 'sticks and stones'

ii) has the effect of reversing the truth value of the variable modified. Since
variables are all truthy, !user_name would be falsy.

iii) the '!' after a method is used to signal that the method is destructive,
that it mutates the caller. (From what I've gathered:
ALL methods that end in ! mutate the caller, but not all caller-mutating methods
end in !)

iv) You'll see "?" in a ternary operator but not otherwise, to my knowledge 

v) when there's a '?' at the end of a method name, that means the method is 
executing some code and returning a boolean (i.e. the methods return value is
TRUE or FALSE)

vi) see (ii). the doubled '!' just means NOT NOT. The first ! makes a truthy
object falsy, then the second ! flips it back to truthy. 

=end