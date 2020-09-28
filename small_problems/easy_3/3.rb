puts "Please write word or multiple words:"
words = gets.chomp

chars_only = words.delete(' ')

puts "There are #{chars_only.length} characters in '#{words}'."