=begin

The method takes an array of numbers 0-19 and returns
an array of those numbers sorted alphabetically by
their English names.

Data Structure
array hash array

Algorithm
Create a hash with the integers as keys and the name
as values.
Iterate over the array and replace each integer with
an array with element 0 as its corresponding name
and element 1 as the original integer
Sort the array
Iterate through the array and delete element 0

=end

num_to_word = { 0 => 'zero', 1 => 'one', 2 => 'two', 3 => 'three',
  4 => 'four', 5 => 'five', 6 => 'six', 7 => 'seven',
  8 => 'eight', 9 => 'nine', 10 => 'ten', 11 => 'eleven',
  12 => 'twelve', 13 => 'thirteen', 14 => 'fourteen',
  15 => 'fifteen', 16 => 'sixteen', 17 => 'seventeen',
  18 => 'eighteen', 19 => 'nineteen'}

def alphabetic_number_sort(numbers, num_to_word)
  numbers.map! do |number|
    [num_to_word[number], number]
  end
  numbers.sort_by! { |number| number[0] }
  numbers.map { |number| number[1] }
end

alphabetic_number_sort((0..19).to_a, num_to_word) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]