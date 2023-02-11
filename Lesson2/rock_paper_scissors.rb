VALID_CHOICES = %w[rock paper scissors]

def test_method
  prompt('test message')
end

def win?(first, second)
  (first == 'rock' && second == 'scissors') ||
    (first == 'paper' && second == 'rock') ||
    (first == 'scissors' && second == 'paper')
end

def prompt(message)
  Kernel.puts("=> #{message}")
end

def display_results(choice, computer)
  if win?(choice, computer)
    prompt("You won!")
  elsif win?(computer, choice)
    prompt("You lost!")
  else
    prompt("It's a tie!")
  end
end

loop do
  choice = ''

  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    choice = Kernel.gets().chomp()
    if VALID_CHOICES.include?(choice)
      break
    else
      prompt("That's not a valid choice.")
    end
  end
  
  computer_choice = VALID_CHOICES.sample()
  prompt("You chose #{choice}; computer chose #{computer_choice}.")
  display_results(choice, computer_choice)
  prompt("Do you want to play again? (y/n)")
  answer = Kernel.gets().chomp
  break unless answer.downcase().start_with?('y')
end
prompt("That you for playing! Goodbye!")
