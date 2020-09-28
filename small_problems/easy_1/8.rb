=begin
Sum all numbers in array
Divide by array length


def average(array)
  array.sum / array.length
end

puts average([1, 5, 87, 45, 8, 8])
puts average([1, 6])
puts average([9, 47, 23, 95, 16, 52])

=end
#further exploration

def average_float(array)
  array_sum = array.sum.to_f
  array_sum / array.length
end

puts average_float([1, 5, 87, 45, 8, 8])
puts average_float([1, 6])
puts average_float([9, 47, 23, 95, 16, 52])