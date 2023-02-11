# Monthly loan rate calculator

def month_rate(loan_amt, apr, yr_dur) # calculator method
  apr /= 100.0
  month_rate = apr / 12.0
  mon_dur = yr_dur * 12
  month_rate = loan_amt * (month_rate / (1 - (1 + month_rate)**(-mon_dur)))
  month_rate.round(2)
end

def valid_loan(loan)
  loan.to_i.to_s != '0' && loan.to_i > 0
end

def valid_apr(apr)
  apr.prepend('0') if apr[0] == '.'
  apr.delete_suffix!('%')
  apr.to_f.to_s != '0.0'
end

def valid_year(yr_dur)
  yr_dur.to_i.to_s != '0'
end

puts "Welcome to the Loan Calculator!"
loop do
  puts "Let's calculate your monthly payment."
  loan_amt = ''
  until valid_loan(loan_amt)
    puts "What's the size of the loan, to the nearest dollar?"
    loan_amt = gets.chomp
  end
  apr = ''
  until valid_apr(apr)
    puts "What's the Annual Percentage Rate (APR), expressed as a percent?"
    apr = gets.chomp
  end
  yr_dur = ''
  until valid_year(yr_dur)
    puts "What's the loan term, rounded to the nearest whole year?"
    yr_dur = gets.chomp
  end
  monthly_payment = month_rate(loan_amt.to_i, apr.to_f, yr_dur.to_i)
  puts "Your monthly payments will be $#{monthly_payment}."
  puts "Would you like to calculate another monthly rate? (y/n)"
  again = gets.chomp.downcase
  if again.start_with?('y')
    puts "Ok!"
  else
    puts "Thanks for using the loan calculator. Goodbye!"
    break
  end
end
