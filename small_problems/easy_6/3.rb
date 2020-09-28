=begin

Current number is the sum of the previous two numbers
  -previous two numbers are at index -1 and -2
Array = [1, 1]
Push new number to array
Break if current number size equals the argument
Array.size is the index number of current number - return it

=end

def find_fibonacci_index_by_length(digits)
  numbers = [1, 1]
  loop do
    current_number = numbers[-1] + numbers[-2]
    numbers << current_number
    break if current_number.digits.size >= digits
  end
  numbers.size
end

find_fibonacci_index_by_length(2)
find_fibonacci_index_by_length(3)
find_fibonacci_index_by_length(10)
find_fibonacci_index_by_length(100)
find_fibonacci_index_by_length(1000)
find_fibonacci_index_by_length(10000)

# This solution ^^ takes a longer time to execute
# than the LS solution. It stores way more information
# since the array grows with every iteration

def find_fibonacci_index_by_length(number_digits)
  first = 1
  second = 1
  index = 2

  loop do
    index += 1
    fibonacci = first + second
    break if fibonacci.to_s.size >= number_digits

    first = second
    second = fibonacci
  end

  index
end

find_fibonacci_index_by_length(2)
find_fibonacci_index_by_length(3)
find_fibonacci_index_by_length(10)
find_fibonacci_index_by_length(100)
find_fibonacci_index_by_length(1000)
find_fibonacci_index_by_length(10000)