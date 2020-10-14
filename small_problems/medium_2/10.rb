=begin

From 1 to given number, sum all the numbers and then square the sum
Square each number and then sum the squares
Subtract the second number from the first number

Data Structure
Array of all the numbers

Algorithm
Create an empty array and push each number from 1 to num to array
Set sum_sqr = array.sum squared
Map over array and replace each element with its square
Set sqr_sum = array.sum
Subtract sqr_sum from sum_sqr

=end

def sum_square_difference(n)
  array = []
  1.upto(n) { |n| array << n }
  sum_squared = array.sum ** 2
  sum_of_squares = array.map { |n| n ** 2 }.sum
  sum_squared - sum_of_squares
end