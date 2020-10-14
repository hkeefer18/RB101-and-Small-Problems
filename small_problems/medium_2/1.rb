=begin

Split the string into its sentences
  First split by '.'
  Then for each element in that array, split further if
    it includes '!'
    -use each_with_index so you can reassign
  Same for '?'

=end

def longest_sentence(text)
  sentences = text.split('.')
  sentences.each_with_index do |text, i|
    if text.include?('!')
      sentences[i] = text.split('!')
    end
  end
  sentences.flatten!.each_with_index do |text, i|
    if text.include?('?')
      sentences[i] = text.split('?')
    end
  end
  longest = sentences.flatten.map { |words| words.split }.max { |a, b| a.size <=> b.size }
  puts longest.size
  print longest.join(' ')
end

# Using regex

def longest_sentence(text)
  sentences = text.split(/\.|\?|!/)
  words = sentences.map { |sent| sent.split }
  longest = words.max { |a, b| a.size <=> b.size }
  puts longest.size
  print longest.join(' ')
end