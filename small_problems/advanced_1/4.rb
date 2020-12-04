def transpose(matrix)
  num_colm = matrix[0].size
  new_matrix = []
  num_colm.times { new_matrix << [] }
  counter = 0
  loop do
    matrix.each do |subarr|
      new_matrix[counter] << subarr[counter]
    end
    break if counter == num_colm - 1
    counter += 1
  end
  new_matrix
end

transpose([[1, 2, 3, 4]]) == [[1], [2], [3], [4]]
transpose([[1], [2], [3], [4]]) == [[1, 2, 3, 4]]
transpose([[1, 2, 3, 4, 5], [4, 3, 2, 1, 0], [3, 7, 8, 6, 2]]) ==
  [[1, 4, 3], [2, 3, 7], [3, 2, 8], [4, 1, 6], [5, 0, 2]]
transpose([[1]]) == [[1]]