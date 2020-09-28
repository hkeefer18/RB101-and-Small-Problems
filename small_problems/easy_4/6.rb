# Iterate through array and at each iteration add that element
# to the starting number, then push to new array

def running_total(array)
  starting_value = 0
  new_array = []

  array.each do |ele|
    starting_value += ele
    new_array << starting_value
  end

  new_array
end

p running_total([2, 5, 13])
p running_total([14, 11, 7, 15, 20])
p running_total([3])
p running_total([])

def running_total(array)
  sum = 0
  array.map { |ele| sum += ele }
end

# Further exploration

def running_total(array)
  starting_value = 0

  array.each_with_object([]) do |ele, a|
    starting_value += ele
    a << starting_value
  end
end

def running_total(array)
  new_array = []

  array.inject(0) do |memo, num|
    new_array << (memo + num)
    memo + num
  end

  new_array
end