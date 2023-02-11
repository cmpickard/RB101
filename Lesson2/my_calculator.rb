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
def math(float1, float2, operation)
  case operation
  when "add" then return float1 + float2
  when "subtract" then return float1 - float2
  when "multiply" then return float1 * float2
  else 
    if float2 != 0
      return float1/float2
    else return "that you can't divide by zero"
    end
  end
end

#Ask for two numbers and an operation
puts "Please provide your first number.(Non-number input will be treated as 0)"
float1 = gets.chomp.to_f
puts "Please provide your second number.(Non-number input will be treated as 0)"
float2 = gets.chomp.to_f

operation = nil

while operation == nil
  puts "What would like to do w/ your nums? (add, subtract, multiply, divide)"
  input3 = gets.chomp
  if input3 == "add" || input3 == "subtract" || input3 == "multiply" || input3 == "divide"
    operation = input3
  else 
    puts "That's not a valid operation!"
  end
end

#Call the math method and then print result
answer = math(float1,float2,operation)
puts "When we #{operation} #{float1} and #{float2} the result is: #{answer}!"