statement = "The Flintstones Rock"

statement.delete!(' ')

statement.chars.each_with_object({}) do |char, hash|
  num = statement.count(char)
  hash[char] = num
end