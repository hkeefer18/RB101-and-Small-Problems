def interleave(arr1, arr2)
  new_arr = []
  counter = 0
  loop do
    new_arr << arr1[counter]
    new_arr << arr2[counter]
    counter += 1
    break if counter == arr1.size
  end
  new_arr
end

interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']

# Further exploration

def interleave(arr1, arr2)
  new_arr = arr1.zip(arr2)
  new_arr.flatten
end

interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']

# LS solution

def interleave(arr1, arr2)
  new_arr = []
  arr1.each_with_index do |ele, index|
    new_arr << ele << arr2[index]
  end
  new_arr
end