# Given an array with 3 sub-arrays which each contain 3 elements,
# return a new array with the first elements of each subarray
# as the first row, the second elements of each subarray as
# the second row, and same for third.

# Iterate through each of the subarrays, pushing index 0 to
# the sub-array at index 0 of a new array.

# Use a counter to do the same for 1 and 2

def transpose(matrix)
  new_arr = [[], [], []]
  counter = 0
  loop do
    matrix.each do |subarr|
      new_arr[counter] << subarr[counter]
    end
    break if counter == 2
    counter += 1
  end
  new_arr
end

matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

new_matrix = transpose(matrix)

p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]
