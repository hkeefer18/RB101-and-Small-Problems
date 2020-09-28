def oddities(array)
  new_array = []
  array.each do |n|
    if array.index(n).even?
      new_array << n
    end
  end
  new_array
end

puts oddities([2, 3, 4, 5, 6])
puts oddities(['abc', 'def'])
puts oddities([123])


# Further exploration

def oddities(array)
  odd_elements = []
  until array.length == 0
    odd_elements << array.shift
    array.shift
  end
  odd_elements
end

array = [2, 3, 4, 5, 6]
puts array
puts oddities(array) == [2, 4, 6]
puts array #array is now empty. This solution mutates the caller
puts oddities(['abc', 'def']) == ['abc']
puts oddities([123]) == [123]
puts oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]

def oddities(array)
  new_array = []
  array.each do |element|
    next if array.index(element).odd?
    new_array.push(element)
  end
  new_array
end

puts oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
puts oddities(['abc', 'def']) == ['abc']
puts oddities([123]) == [123]
puts oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
