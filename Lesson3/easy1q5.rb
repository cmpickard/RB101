#Programmatically determine if 42 lies between 10 and 100.

def lies_between(check_num, bound1, bound2)
  (check_num > bound1 && check_num < bound2) ||
    (check_num > bound2 && check_num < bound1)
end

puts lies_between(42,10,100)  # true
puts lies_between(42,100,10)  # true
puts lies_between(42,10,14)   # false
puts lies_between(10,1,10)    # false

#OR
puts (10..100).cover?(42)