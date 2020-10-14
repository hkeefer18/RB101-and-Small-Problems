=begin

Get an array of the digits (need to reverse after calling digits)
slice out the last n digits of the number
  -[-n..-1]
call rotate_array on this sliced out array
reassign the last n digits of original array of digits
  to the rotated sliced array
  - arr_digits[-n..-1] = rotated_sliced_arr
join array and convert back to integer

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

rotate_rightmost_digits(735291, 1) == 735291
rotate_rightmost_digits(735291, 2) == 735219
rotate_rightmost_digits(735291, 3) == 735912
rotate_rightmost_digits(735291, 4) == 732915
rotate_rightmost_digits(735291, 5) == 752913
rotate_rightmost_digits(735291, 6) == 352917