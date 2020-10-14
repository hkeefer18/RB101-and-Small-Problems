=begin

Iterate through all the odd numbers between 1 and n
On each iteration, puts the iteration number as the
  number of stars and n - iteration number / 2 spaces
  on either side of the star
Then iterate through the numbers again in the opposite
  direction starting at n-2

=end

def diamond(n)
  (1..n).step(2) do |iteration|
    spaces = (n - iteration) / 2
    puts ' ' * spaces + '*' * iteration + ' ' * spaces
  end
  (1..(n-2)).to_a.reverse.select { |x| x.odd? }.each do |it|
    spaces = (n - it) / 2
    puts ' ' * spaces + '*' * it + ' ' * spaces
  end
end