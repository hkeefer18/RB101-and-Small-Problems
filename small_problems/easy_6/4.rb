=begin

Start at the outer values and reverse them and then move
  inward
  -SET array[counter-1], array[counter * -1] = array[counter * -1], array[counter - 1]
  -Increment counter
Break if array.size / 2 is equal to counter (put on top
  line in case of empty array)

=end

def reverse!(list)
  counter = 1
  loop do
    break if counter > list.size / 2
    list[counter - 1], list[counter * -1] = list[counter * -1], list[counter - 1]
    counter += 1
  end
  list
end

list = [1,2,3,4]
result = reverse!(list)
result == [4, 3, 2, 1]
list == [4, 3, 2, 1]
list.object_id == result.object_id

list = %w(a b e d c)
reverse!(list) == ["c", "d", "e", "b", "a"]
list == ["c", "d", "e", "b", "a"]

list = ['abc']
reverse!(list) == ["abc"]
list == ["abc"]

list = []
reverse!(list) == []
list == []