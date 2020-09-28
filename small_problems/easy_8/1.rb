def sum_of_sums(array)
  array_of_sums = []
  counter = 1
  loop do
    array_of_sums << array[0, counter].sum
    counter += 1
    break if counter > array.size
  end
  array_of_sums.sum
end

sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
sum_of_sums([4]) == 4
sum_of_sums([1, 2, 3, 4, 5]) == 35