age = rand(20..200)

puts "Teddy is #{age} years old!"

#Further exploration



def name_age(name)
  age = rand(20..200)
  if !name.empty?
    puts "#{name} is #{age} years old!"
  else
    puts "Teddy is #{age} years old!"
  end
end

puts "What is your name?"
name = gets.chomp

name_age(name)