words = "the flintstones rock"

def titleize(string)
  array = string.split
  array.each do |word|
    word.capitalize!
  end
  array.join(' ')
end

p titleize(words)

# words.split.map { |word| word.capitalize }.join(' ')