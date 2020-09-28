a = 2
b = [5, 8]
arr = [a, b]

arr[0] += 2
arr[1][0] -= a

=begin

arr = [2, [5, 8]]
arr = [4, [5, 8]] index 0 is not a anymore, by reassigning
  the value at this index we are pointing at a different object
arr = [4, [3, 8]] b did change because b is an array 
  and we changed the value of an element in the array

=end