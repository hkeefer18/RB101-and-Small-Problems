def real_palindrome?(string)
  chars = string.downcase.chars
  abc = ('a'..'z').to_a
  nums = ('0'..'9').to_a
  chars.delete_if { |char| !abc.include?(char) || !nums.include?(char) }
  chars == chars.reverse
end

puts real_palindrome?('madam') == true
puts real_palindrome?('Madam') == true           # (case does not matter)
puts real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
puts real_palindrome?('356653') == true
puts real_palindrome?('356a653') == true
puts real_palindrome?('123ab321') == false

# string.delete('^a-z0-9')