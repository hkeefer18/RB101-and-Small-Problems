def repeater(string)
  string.chars.map { |char| char * 2 }.join
end

repeater('Hello') == "HHeelllloo"
repeater("Good job!") == "GGoooodd  jjoobb!!"
repeater('') == ''