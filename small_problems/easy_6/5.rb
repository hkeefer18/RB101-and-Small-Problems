def reverse(array)
  counter = 1
  new_array = []
  until counter > array.size
    current_element = array[counter * -1]
    new_array << current_element
    counter += 1
  end
  new_array
end

reverse([1,2,3,4]) == [4,3,2,1]          # => true
reverse(%w(a b e d c)) == %w(c d e b a)  # => true
reverse(['abc']) == ['abc']              # => true
reverse([]) == []                        # => true

list = [1, 3, 2]                      # => [1, 3, 2]
new_list = reverse(list)              # => [2, 3, 1]
list.object_id != new_list.object_id  # => true
list == [1, 3, 2]                     # => true
new_list == [2, 3, 1]                 # => true

# Further exploration

def reverse_2(array)
  array.each_with_object([]) { |e, a| a.prepend(e) }
end

reverse_2([1, 2, 3, 4, 5])

# From classmate
def reverse_using_inject(list)
  list.inject([], &:unshift)
end

reverse_using_inject([1, 2, 3, 4, 5])
