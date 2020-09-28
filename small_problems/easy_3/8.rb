=begin
The last and first characters should match and moving
in from the ends each set of characters should match.

Iterate through the string and check that the 
first and last characters match etc. Push to an
array, check if the array is all true.

=end

def palindrome?(string)
  chars = string.chars
  counter = 1
  until counter == chars.length
    break if !(chars[counter - 1] == chars[chars.length - counter])
    counter += 1
  end
  counter == chars.length
end

puts palindrome?('madam') #== true
puts palindrome?('Madam') #== false          # (case matters)
puts palindrome?("madam i'm adam") #== false # (all characters matter)
puts palindrome?('356653') #== true

# further exploration

def palindrome?(str_or_ary)
  str_or_ary == str_or_ary.reverse
end

puts palindrome?('madam')
puts palindrome?([1, 2, 3, 2, 1])
puts palindrome?([1, 2, 3, 1, 2])