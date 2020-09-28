def word_sizes(sentence)
  hash = Hash.new(0)
  sentence.split.each do |word|
    lett_only = word.delete('^A-Za-z')
    hash[lett_only.size] += 1
  end
  hash
end

word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
word_sizes('') == {}