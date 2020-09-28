def staggered_case(string)
  new_string = ''
  string.chars.each_with_index do |char, index|
    index.even? ? char.upcase! : char.downcase!
    new_string += char
  end
  new_string
end

staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
staggered_case('ALL_CAPS') == 'AlL_CaPs'
staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'

# Further exploration

def staggered_case(string, starting_case = 'up')
  new_string = ''
  string.chars.each_with_index do |char, index|
      index.even? ? char.upcase! : char.downcase!
      new_string += char
  end
  starting_case == 'down' ? new_string.swapcase : new_string
end

staggered_case('I Love Launch School!', 'down')
staggered_case('ignore 77 the 444 numbers')