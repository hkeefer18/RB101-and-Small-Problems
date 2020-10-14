=begin

Move the first element of an array to the end of the
array without mutating the original array.

Initiate a variable to point to the first element
Slice the array from the second element to the last
  - if the array has only one element, new_array
    will just start with the value nil
Push the variable from the first step to the new array

=end

def rotate_array(array)
  first_ele = array[0]
  new_array = array[1..-1]
  new_array << first_ele
end

rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
rotate_array(x) == [2, 3, 4, 1]   # => true
x == [1, 2, 3, 4]                 # => true