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

def palindromes(string)
  substrings(string).select do |string|
    string == string.reverse && string.size > 1
  end
end

palindromes('abcd') == []
palindromes('madam') == ['madam', 'ada']
palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]