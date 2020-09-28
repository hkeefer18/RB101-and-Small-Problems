=begin

split string into an array of its characters.
Map over the array
  if string is downcase, make upcase
  if upcase, make downcase
    check if downcase by seeing if 
      character == character.downcase
Join
=end

def swapcase(string)
  chars_ary = string.chars.map do |char|
    char == char.downcase ? char.upcase : char.downcase
  end
  chars_ary.join
end

swapcase('CamelCase') == 'cAMELcASE'
swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'