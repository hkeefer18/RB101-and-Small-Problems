def is_odd?(number)
  number % 2 == 1
end

puts is_odd?(2)
puts is_odd?(5)
puts is_odd?(-17)
puts is_odd?(-8)
puts is_odd?(0)
puts is_odd?(7)

def is_odd_remainder?(number)
  number.remainder(2) == 1 || number.remainder(2) == -1
end

puts is_odd_remainder?(2)
puts is_odd_remainder?(5)
puts is_odd_remainder?(-17)
puts is_odd_remainder?(-8)
puts is_odd_remainder?(0)
puts is_odd_remainder?(7)