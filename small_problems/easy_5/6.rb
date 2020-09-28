=begin

Given a string of words separated by spaces, return a
hash with the number of words of different sizes.
The key is the word size, the value is the frequency.
Everything but ' ' counts as a character.

Data Structure
array of the words
hash of frequencies

Algorithm
Split string into words
Iterate over array and replace each word with its size
Loop through the array starting with the first word size
  and count the number of matches to that size. Return
  the word size and frequency and push it to the hash

=end

def word_sizes(string)
  words = string.split
  words.map! { |word| word.size } # array of numbers representing each word's size
  counter = 0
  freq = {}
  loop do
    break if counter == words.size # first in case of empty string
    current_word = words[counter]
    word_size = words.select do |word|
                  word == current_word
                end # array of all word sizes matching current word size i.e. [3, 3, 3]
    freq[current_word] = word_size.size # current_word size is key, number of words with that size is value
    counter += 1
  end
  freq # duplicate keys are overwritten; they all have the same value
end

word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
word_sizes('') == {}


=begin

Split the sentence
Initiate an empty hash with a default value of 0
Iterate over the sentence with each
  -Increment the value of the key

=end

def word_sizes(sentence)
  hash = Hash.new(0)
  sentence.split.each do |word|
    hash[word.size] += 1
  end
  hash
end

word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
word_sizes('') == {}