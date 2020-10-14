=begin

Iterate through the digits, starting with rotating the
  entire number, next the last digits not including
  the first element, next the last digits not including
  the first two elements, so on
Start counter at digits.size
Pass counter to rotate_rightmost_digits as n parameter
Counter -= 1
Break when counter = 0

=end

def rotate_array(array)
  first_ele = array[0]
  new_array = array[1..-1]
  new_array << first_ele
end

def rotate_rightmost_digits(number, n)
  arr_digits = number.digits.reverse
  rotated_digits = rotate_array(arr_digits[-n..-1])
  arr_digits[-n..-1] = rotated_digits
  arr_digits.join.to_i
end

def max_rotation(number)
  counter = number.digits.size
  loop do
    number = rotate_rightmost_digits(number, counter)
    counter -= 1
    break if counter == 0
  end
  number
end

max_rotation(735291) == 321579
max_rotation(3) == 3
max_rotation(35) == 53
max_rotation(105) == 15 # the leading zero gets dropped
max_rotation(8_703_529_146) == 7_321_609_845