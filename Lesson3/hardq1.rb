# What do you expect to happen when the greeting variable is referenced in the 
# last line of the code below?

if false
  greeting = "hello world"
end

greeting

# WON'T THROW AN ERROR!!!
# You might reason as follows:

# The code can be read: "If FALSE is TRUE, assign new variable greeting to 
# "hello world."" Now state the value of the greeting variable.
# Since FALSE isn't TRUE the greeting variable is never initialized 

# BUT:
# Important fact: the greeting variable IS initialized and assigned nil.
# Variable assignments that are un-performed b/c of if/then control flow are
# still initialized! They are just assigned to nil, rather than the stated
# value.