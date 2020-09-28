#m = p * (j / (1 - (1 + j)**(-n)))

=begin

inputs: loan amount
        APR - change to MPR
        Loan duration in years or months

outputs: monthly payment


Data structure: strings/integers

Algorithm: 

START

GET input from user
  change APR to MPR (decimal, not percent)
  change duration to months
Calculate monthly payment with formula

=end

def valid_number?(num)
  num.to_i.to_s == num && num.to_i > 0 && !num.empty?
end

def valid_decimal?(num)
  num.to_f.to_s == num && num.to_f > 0.0 && !num.empty?
end

loan_amount = ''

loop do
  puts "=> What is your loan amount? Do not enter any symbols.\n=> $100,000 should be entered as 100000"
  loan_amount = gets.chomp
  if valid_number?(loan_amount)
    break
  else
    puts "=> Please enter a valid number."
  end
end

apr = ''

loop do
  puts "=> What is your APR? Please enter it as a decimal.\n=> 6% should be entered as 0.06"
  apr = gets.chomp
  if valid_decimal?(apr)
    break
  else
    puts "=> Please enter a valid number."
  end
end

loan_duration = ''

loop do
  puts "=> What is the loan duration in years?"
  loan_duration = gets.chomp
  if valid_number?(loan_duration)
    break
  else
    puts "=> Please enter a valid number."
  end
end

mpr = apr.to_f / 12
loan_duration_months = loan_duration.to_i * 12

monthly_payment = loan_amount.to_i * (mpr / (1 - (1 + mpr)**(-loan_duration_months)))

puts "=> Your monthly payment is $#{monthly_payment}"
