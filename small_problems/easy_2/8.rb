=begin
puts "Please enter an integer greater than 0"
number = gets.chomp.to_i
puts "Enter 's' to compute the sum, 'p' to compute the product."
operation = gets.chomp

if operation == 's'
  sum = (1..number).to_a.sum
  puts "The sum of the integers between 1 and #{number} is #{sum}."
elsif operation == 'p'
  array = (1..(number-1)).to_a
  new_array = []
  array.each do |n|
  new_array << (n * number)
  end
  product = new_array.sum
  puts "The product of the integers between 1 and #{number} is #{product}."
end
=end

# Further exploration

def compute_sum(num)
  (1..num).inject(:+)
end

def compute_product(num)
  (1..num).inject(:*)
end

number = ''
operation = ''

loop do
  puts "Please enter an integer greater than 0"
  number = gets.chomp
  break if number.to_i.to_s == number && number.to_i > 0
  puts "Please enter a valid number"
end

loop do  
  puts "Enter 's' to compute the sum, 'p' to compute the product."
  operation = gets.chomp
  break if (operation == 's') || (operation == 'p')
  puts "Invalid input"
end

if operation == 's'
  puts "The sum of the integers between 1 and #{number} is #{compute_sum(number.to_i)}."
elsif operation == 'p'
    puts "The product of the integers between 1 and #{number} is #{compute_product(number.to_i)}."
end