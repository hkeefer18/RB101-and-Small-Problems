=begin

Given a string of at least one word with at least
one letter with words separated by spaces, return
a string with the first and last letter of each word
swapped.

Algorithm
Separate into individual words
Separate words into characters
Swap the first and last characters
  -reassign first character to last and vice versa
    -set first char to first element
    -set last to last
    -reassign element 0 to last
    -reassign element x to first
      -x is number of characters minus 1
Join characters back together
Join words back together with spaces

=end

def swap(string)
  words = string.split
  words.map! do |word| 
    chars_ary = word.chars
    # the next four lines could be accomplished
    # in one line with
    # chars_ary[0], chars_ary[-1] = chars_ary[-1], chars_ary[0]
    first = chars_ary.first
    last = chars_ary.last
    chars_ary[0] = last
    chars_ary[chars_ary.length - 1] = first
    chars_ary.join
  end
  words.join(' ')
end

swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
swap('Abcde') == 'ebcdA'
swap('a') == 'a'