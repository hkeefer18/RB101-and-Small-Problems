=begin
Determine if integer is odd
Create a string with integer / 2 times '10' and if odd
  add another '1' to the end of the string
=end

def stringy(integer)
  string = ''
  (integer / 2).times { string << '10' }
  if integer.odd?
    string << '1'
  end
  string
end

puts stringy(9)
puts stringy(8)


# Further exploration

def stringy(integer, start = 1)
  numbers = []
  if start == 1
    integer.times do |index|
      number = index.even? ? 1 : 0
      numbers << number
    end
  elsif start == 0
    integer.times do |index|
      number = index.even? ? 0 : 1
      numbers << number
    end
  end

  numbers.join
end

puts stringy(9)
puts stringy(9, 1)
puts stringy(9, 0)
puts stringy(8)
puts stringy(8,1)
puts stringy(8, 0)