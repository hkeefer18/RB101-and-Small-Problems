def leading_substrings(string)
  accumulator = ''
  new_arr = []
  string.chars.each do |letter|
    accumulator += letter
    new_arr << accumulator
  end
  new_arr
end

leading_substrings('abc') == ['a', 'ab', 'abc']
leading_substrings('a') == ['a']
leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']

# LS
def leading_substrings(string)
  result = []
  0.upto(string.size - 1) do |index|
    result << string[0..index]
  end
  result
end