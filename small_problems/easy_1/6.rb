=begin
Split the string into separate words
Check each word for its length, reverse the ones
  greater than 5 characters.
Join the words back together
=end

def reverse_words(sentence)
  words = sentence.split
  words.each do |word|
    if word.length >= 5
      word.reverse!
    end
  end
  words.join(' ')
end

puts reverse_words("Hello to everyone in the world")