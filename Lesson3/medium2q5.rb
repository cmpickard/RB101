# Depending on a method to modify its arguments can be tricky:

=begin
def tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param << "rutabaga"
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"
=end

# Whether the above "coincidentally" does what we think we wanted depends upon 
# what is going on inside the method.

# How can we change this code to make the result easier to predict and easier 
# for the next programmer to maintain? That is, the resulting method should not
# mutate either argument, but my_string should be set to 'pumpkinsrutabaga' and 
# my_array should be set to ['pumpkins', 'rutabaga']

def string_method(a_string_param)
  a_string_param += "rutabaga"
end

def array_method(an_array_param)
  an_array_param << "rutabaga"
end

my_string = "pumpkins"
my_array = ["pumpkins"]
my_string = string_method(my_string)
my_array = array_method(my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"


#OR -- You can return two things!!!! (or and array of two things?)
def not_so_tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param += ["rutabaga"]

  return a_string_param, an_array_param
end

my_string = "pumpkins"
my_array = ["pumpkins"]
my_string, my_array = not_so_tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"