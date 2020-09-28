=begin
Split the string into separate words, assign to a variable
Reverse the array
Join the words back into one string
=end

def reverse_sentence(sentence)
  words = sentence.split
  words.reverse.join(' ')
end

puts reverse_sentence("My name is Hayley")

# Could have chained methods on one line