=begin
Save first element as saved_word
Select all instances of saved_word in array
Assign the return of select to a variable
Get the length of the array returned by select and assign it
  to a variable
Add the word and number to a hash
Delete the instances of the word
Loop until array is empty
=end

def count_occurrences(list)
  occurrences = {}
  all_same_word = []
  loop do
    saved_word = list[0]
    all_same_word = list.select { |word| word == saved_word }
    number_of_occurences = all_same_word.length
    occurrences_hash[saved_word] = number_of_occurences
    list.delete_if { |word| word == saved_word }
    break if list.length == 0
  end
  occurrences
end

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

puts count_occurrences(vehicles)


=begin
Solution from LS

def count_occurrences(array)
  occurrences = {}

  array.uniq.each do |element|
    occurrences[element] = array.count(element)
  end

  occurrences.each do |element, count|
    puts "#{element} => #{count}"
  end
end

=end