def leading_substrings(string)
  accumulator = ''
  new_arr = []
  string.chars.each do |letter|
    accumulator += letter
    new_arr << accumulator
  end
  new_arr
end

def substrings(string)
  array = []
  string.chars.each_with_index do |letter, index|
    array.concat(leading_substrings(string[index..string.size - 1]))
  end
  array
end

substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]