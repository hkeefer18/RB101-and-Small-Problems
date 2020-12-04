require 'yaml'
text = YAML.load_file('madlibs.yml')

ADJECTIVES = %w(quick lazy sleepy ugly)
NOUNS = %w(fox dog head leg)
VERBS = %w(jumps lifts bites licks)
ADVERBS = %w(easily lazily noisily excitedly)

def madlibs(text)
  text = text.split
  text.each_with_index do |word, i|
    case word
    when '%{adjective}' then text[i] = ADJECTIVES.sample
    when '%{verb}' then text[i] = VERBS.sample
    when '%{adverb}' then text[i] = ADVERBS.sample
    when '%{noun}' then text[i] = NOUNS.sample
    end
  end
  puts text.join(' ')
end

madlibs(text)
# did not sub the %{noun}, because of the comma.

# LS solution
ADJECTIVES = %w(quick lazy sleepy ugly).freeze
NOUNS      = %w(fox dog head leg cat tail).freeze
VERBS      = %w(spins bites licks hurdles).freeze
ADVERBS    = %w(easily lazily noisly excitedly).freeze

File.open('madlibs.txt') do |file|
  file.each do |line|
    puts format(line, noun:      NOUNS.sample,
                      verb:      VERBS.sample,
                      adjective: ADJECTIVES.sample,
                      adverb:    ADVERBS.sample)
  end
end
