# What is the output of the following code?

answer = 42

def mess_with_it(some_number)
  some_number += 8
end

new_answer = mess_with_it(answer)

p answer - 8

# 34
# the mess_with_it method doesn't mutate the caller, so the answer object is 
# unchanged by the method call. Thus, the result of 42-8 is what gets output.