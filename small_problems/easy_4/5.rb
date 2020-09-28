=begin

For each number between 1 and integer given, determine
if divisible by 3 or 5. Add those numbers together

Iterate over an array of the range of numbers and select
the numbers divisible by 3 or 5. Use sum to sum

=end

def multisum(num)
  multiples = (1..num).select { |n| 
    (n % 3 == 0) || (n % 5 == 0) }
  multiples.sum
end

puts multisum(3)
puts multisum(5)
puts multisum(10)
puts multisum(20)
puts multisum(1000)