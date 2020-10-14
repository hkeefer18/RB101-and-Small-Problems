CONSONANTS = %w(b c d f g h j k l m n p q r s t v w x y z)

def double_consonants(string)
  string.chars.map do |char|
    if CONSONANTS.include?(char.downcase)
      char * 2
    else
      char
    end
  end.join
end

double_consonants('String') == "SSttrrinngg"
double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
double_consonants("July 4th") == "JJullyy 4tthh"
double_consonants('') == ""