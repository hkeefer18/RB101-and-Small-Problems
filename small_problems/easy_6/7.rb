def halvsies(array)
  first_half = []
  second_half = []
  counter = 0
  loop do
    break if counter == array.size / 2
    counter += 1
    second_half.unshift(array[counter * -1])
  end
  counter = 0
  loop do
    break if counter == array.size - second_half.size
    counter += 1
    first_half.push(array[counter - 1])
  end
  [first_half, second_half]
end

halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
halvsies([5]) == [[5], []]
halvsies([]) == [[], []]

# Use slice
def halvsies(array)
  middle = (array.size / 2.0).ceil
  first_half = array[0, middle]
  second_half = array[middle, array.size - middle]
  [first_half, second_half]
end

halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
halvsies([5]) == [[5], []]
halvsies([]) == [[], []]