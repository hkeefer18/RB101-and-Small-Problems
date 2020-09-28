def multiply_list(arr1, arr2)
  new_arr = []
  arr1.each_with_index do |num, index|
    new_arr << num * arr2[index]
  end
  new_arr
end

multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]

def multiply_list(arr1, arr2)
  arr1.zip(arr2).map { |sub_arr| sub_arr.inject(:*) }
end

multiply_list([3, 5, 7], [9, 10, 11])