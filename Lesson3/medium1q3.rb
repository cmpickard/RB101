# Alan wrote the following method, which was intended to show all 
# of the factors of the input number:

=begin
def factors(number)
  divisor = number
  factors = []
  begin
    factors << number / divisor if number % divisor == 0
    divisor -= 1
  end until divisor == 0
  factors
end
=end

# Alyssa noticed that this will fail if the input is 0, or a negative number, 
# and asked Alan to change the loop. How can you make this work without using 
# the begin/end until construct? Note that we're not looking to find the factors
# for 0 or negative numbers, but we just want to handle it gracefully instead of
# raising an exception or going into an infinite loop.

def factors(number)
  divisor = number
  factors = []
  while divisor > 0
    factors << number / divisor if number % divisor == 0
    divisor -= 1
  end
  factors
end

p factors(12)
p factors(60)
p factors(0)
p factors(-1)

# Bonus 1
# What is the purpose of the number % divisor == 0 ?
# ANSWER: that bit is checking to see whether the current divisor divides evenly
# into the number. (e.g. Does 4 divide evenly into 12? Yes, because 12 mod 4 =
# 0.)

# Bonus 2
# What is the purpose of the second-to-last line (line 8) in the method 
# (the factors before the method's end)?
# ANS : that's to make sure that the factors array is the return value of this
# method