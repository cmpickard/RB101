=begin
Build a command line calculator program that does the following:

asks for two numbers
asks for the type of operation to perform: add, subtract, multiply or divide
displays the result
Use the Kernel.gets() method to retrieve user input, and use Kernel.puts() 
method to display output. Remember that Kernel.gets() includes the newline,
so you have to call chomp() to remove it: Kernel.gets().chomp().
=end

#single method for all 4 operations
def math(int1,int2, operation)
  case operation
  when "add" then return int1+int2
  when "subtract" then return int1 - int2
  when "multiply" then return int1 * int2
  else 
    if int2 != 0
      return int1/int2
    else return "that you can't divide by zero"
    end
  end
end

#Ask for two numbers and an operation
puts "Please provide your first number.(Non-number input will be treated as 0)"
int1 = gets.chomp.to_i
puts "Please provide your second number.(Non-number input will be treated as 0)"
int2 = gets.chomp.to_i

operation = nil

while operation == nil
  puts "What would like to do with these? (add, subtract, multiply, divide)"
  input3 = gets.chomp
  if input3 == "add" || input3 == "subtract" || input3 == "multiply" || input3 == "divide"
    operation = input3
  else 
    puts "That's not a valid operation"
  end
end

#Call the math method and then print result
answer = math(int1,int2,operation)
puts "When we #{operation} #{int1} and #{int2} the result is: #{answer}!"