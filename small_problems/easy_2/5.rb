puts "What is your name?"
name = gets.chomp

if name.include?('!')
  name.delete!('!').upcase!
  puts "HELLO #{name}. WHY ARE WE SCREAMING?"
else
  puts "Hello #{name.capitalize}."
end