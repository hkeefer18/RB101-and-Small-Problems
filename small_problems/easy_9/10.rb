def buy_fruit(array)
  new_array = []
  array.each do |sub_array|
    sub_array[1].times { new_array << sub_array[0] }
  end
  new_array
end

buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]