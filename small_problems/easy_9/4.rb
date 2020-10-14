def sequence(number)
  array = []
  1.upto(number) { |num| array << num }
  array
end

sequence(5) == [1, 2, 3, 4, 5]
sequence(3) == [1, 2, 3]
sequence(1) == [1]

# Further exploration

def sequence(number)
  number >= 1 ? (1..number).to_a : (number..1).to_a
end

sequence(-2)
sequence(1)
sequence(5)