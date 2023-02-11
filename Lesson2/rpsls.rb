VALID_CHOICES = %w[rock paper scissors lizard spock]
SHORT_CHOICES = %w[r p s l o]

def win?(first, second)
  rules_hash = {'r' => ['s', 'l'],
                'p' => ['r', 'o'],
                's' => ['p', 'l'],
                'l' => ['p', 'o'],
                'o' => ['r', 's']}
  rules_hash[first].include?(second)
end

def prompt(message)
  Kernel.puts("=> #{message}")
end

def calc_results(choice, computer)
  if win?(choice, computer)
    display_results('win')
    return 1
  elsif win?(computer, choice)
    display_results('loss')
    return -1
  else
    return 0
  end
end

def display_results(outcome)
  if outcome == 'win'
    prompt("You won!")
  elsif outcome == 'loss'
    prompt("You lost!")
  else
    prompt("It's a tie!")
  end
end

def wins_record(choice, computer, wins_p, wins_c)
  if win?(choice, computer)
    prompt("You won!")
  elsif win?(computer, choice)
    prompt("You lost!")
  else
    prompt("It's a tie!")
  end
end

wins_p = 0
wins_c = 0
loop do
  choice = ''
  
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    choice = Kernel.gets().chomp().downcase()
    if VALID_CHOICES.include?(choice)
      break
    else
      prompt("That's not a valid choice.")
    end
  end
  
  computer_choice = VALID_CHOICES.sample()
  prompt("You chose #{choice}; computer chose #{computer_choice}.")
  
  if computer_choice != 'spock'
    computer_choice = computer_choice.slice(0) 
  else 
    computer_choice = computer_choice.slice(2)
  end
  
  if choice != 'spock'
    choice = choice.slice(0) 
  else 
    choice = choice.slice(2)
  end
  
  outcome = calc_results(choice, computer_choice)
  if outcome == 1
    wins_p += 1
  elsif outcome == -1
    wins_c += 1
  end

  prompt("Current record: Your wins = #{wins_p} vs. Computer wins = #{wins_c}")
  if wins_p == 3 || wins_c == 3
    break
  else
    prompt("Best of three wins!")
  end
 
end

if wins_p == 3
  prompt("You win!")
else
  prompt("You lost.")
end

prompt("That you for playing! Goodbye!")
