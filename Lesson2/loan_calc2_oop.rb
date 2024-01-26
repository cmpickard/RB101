class LoanCalculator
  attr_accessor :principle
  attr_reader :month_rate, :month_term, :month_payment

  def initialize
    @principle = 0
    @month_rate = 0
    @month_term = 0
    @month_payment = 0
  end

  def run
    greeting
    get_principle
    get_apr
    get_term
    calc_month_payment
    display_result
    goodbye
  end

  def prompt(str)
    puts ">> #{str}"
  end

  def blank_line
    puts ''
  end

  def greeting
    prompt('Hi! Welcome to the loan payment calculator')
    prompt('This will help you calculate your monthly payments ')
    prompt('for a mortgage or a car loan.')
    blank_line
  end

  def get_principle
    prompt('How large is the loan, to the nearest dollar?')
    ans = gets.chomp
    if valid_principle?(ans)
      self.principle = ans.to_i
      prompt("Okay. Your principle is $#{principle}.")
      blank_line
    else
      prompt("Sorry. That is not a valid input.")
      blank_line
      get_principle
    end
  end

  def valid_principle?(str)
    str.gsub!(/\$/,'')
    str.to_i.to_s == str
  end

  def get_apr
    loop do
      prompt("What is the annual percent rate (APR) for this loan?")
      prompt("(please express the value as a whole number %)")
      ans = gets.chomp.gsub(/\%/,'')
      if valid_apr?(ans)
        self.month_rate = ans
        prompt("Okay. Your APR is #{ans}%.")
        prompt("That means your monthly interest rate is:")
        prompt("#{sprintf('%.2f', month_rate*100)}%")
        blank_line
        break
      else
        prompt("Sorry! That is not a valid APR.")
        blank_line
      end
    end
  end

  def valid_apr?(str)
    str.to_i.to_s == str
  end

  def month_rate=(apr)
    float = (apr.to_f) / 100
    @month_rate = (float / 12)
  end
  
  def get_term
    loop do
      prompt("What is the length of the loan (expressed as a number of years)?")
      ans = gets.chomp.gsub(/ ?years/,'')
      if valid_term?(ans)
        self.month_term = ans
        prompt("Okay. Your loan is for #{ans} years or #{month_term} months.")
        blank_line
        break
      else
        prompt("Sorry. That is not a valid loan term.")
        blank_line
      end
    end
  end

  def valid_term?(years)
    years.to_i.to_s == years
  end

  def month_term=(years)
    @month_term = years.to_i * 12
  end

  def month_payment=()
    @month_payment = (principle * (month_rate / (1 - (1 + month_rate)**(-month_term))))
  end

  alias_method :calc_month_payment, :month_payment=

  def display_result
    prompt("For this loan, your estimated payment is:")
    prompt("$#{sprintf('%.2f', month_payment)} per month.")
    blank_line
  end

  def goodbye
    prompt("Thanks for using the Loan Calculator! Goodbye.")
  end
end

calc = LoanCalculator.new
calc.run
