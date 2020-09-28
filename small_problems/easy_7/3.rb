def word_cap(string)
  string.split.map { |word| word.capitalize }.join(' ')
  # string.split.map(&:capitalize).join(' ')
end

word_cap('four score and seven') == 'Four Score And Seven'
word_cap('the javaScript language') == 'The Javascript Language'
word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'

# Further exploration

ALPHA_HASH = ('a'..'z').to_a.zip(('A'..'Z').to_a).to_h

def word_cap(string)
  words = []
  string.split.each do |word|
    word.downcase!
    word[0] = ALPHA_HASH[word[0]] if ALPHA_HASH.has_key?(word[0])
    words << word
  end
  words.join(' ')
end

word_cap('four score and seven') == 'Four Score And Seven'
word_cap('the javaScript language') == 'The Javascript Language'
word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'