=begin

Given a word (string), return if the word can be spelled
  using the provided letter 'blocks' which have
  two letters on them and only one of the letters can
  be used in the word.

Method needs to check each letter against the others
  to determine if all of the letters are only on
  the block once. This includes no double letters 'bb'

Data Structure
An array of arrays, each sub array containing the two
  letters on one block.

Algorithm
Iterate through the characters of the word using a loop
  with a counter which will tell you the index you are
  at in the word.
Break the loop when the counter > word.size -1
For each sub array, check if it includes the current char
  The array passed to #each should be one element
    shorter with each iteration. Pass in array[0..-(counter + 1)]
    in order to exclude the last element(s) of the array,
    where we are moving the sub arrays that have already
    been used.
If it includes the current char, move the sub array to
  be the last element of the array.
If not, return false

=end

letter_pairs = [['B', 'O'], ['X', 'K'], ['C', 'P'], ['N', 'A'],
 ['G', 'T'], ['R', 'E'], ['F', 'S'], ['J', 'W'], ['H', 'U'],
  ['V', 'I'], ['L', 'Y'], ['Z', 'M']]

def block_word?(word, arr)
  count = 0
  loop do
    break if count > word.size - 1
    curr_char = word.upcase[count]
    sub_arr = arr[0..-(count + 1)].select { |sub_arr| sub_arr.include? (curr_char) }
      # select is called on only the letter blocks not used yet
      # used letter blocks are at the end and not included in the slice
    sub_arr.empty? ? break : arr << arr.delete(sub_arr.flatten)
      # moves sub-array that contains the 'used' letter to the end of array
      # if letter was already used sub-array is empty and the loop breaks
    count += 1
  end
  count > word.size - 1 # true if looped through word without breaking prematurely
end

block_word?('BUTCH', letter_pairs)
letter_pairs
block_word?('batch', letter_pairs)
letter_pairs
block_word?('pop', letter_pairs)
letter_pairs