=begin

Method takes a string and returns a new string with 
consecutive duplicate characters collapsed to a single
character.

Data Structure
string to new array to string

Algorithm
Iterate through the string and push each character to
the array unless the last character matches the current
Join array back into string

=end

def crunch(string)
  array = []
  string.each_char do |char|
    array << char unless array.last == char
  end
  array.join
end

crunch('ddaaiillyy ddoouubbllee') == 'daily double'
crunch('4444abcabccba') == '4abcabcba'
crunch('ggggggggggggggg') == 'g'
crunch('a') == 'a'
crunch('') == ''