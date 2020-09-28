=begin

Take a string that has non-alphbetic characters in it
and return only the alphabetic characters with the
non-alpha characters replaced by a whitespace. If there
are more than one non-alpha character in a row, only
one whitespace should replace them.

Data Structure
array and iteration

Algorithm
Split string into characters
Replace non-alpha characters with whitespaces
Join characters back together
Split again
If original string starts with non-alpha, prepend
with a whitespace
If orig str ends with non, concat whitespace

=end

def cleanup(string)
  chars = string.chars
  alpha = ('a'..'z')
  chars.map! { |char| alpha.include?(char) ? char : ' ' }
  new_string = chars.join.split.join(' ')
  new_string.prepend(' ') if !alpha.include?(string[0])
  new_string.concat(' ') if !alpha.include?(string[-1])
  new_string
end

cleanup("---what's my +*& line?") == ' what s my line '
