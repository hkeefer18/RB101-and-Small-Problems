=begin

Invalid if all angles != 180 or any angle <= 0

Right if one angle = 90

acute if all angles < 90

else obtuse

=end

def triangle(a, b, c)
  angles = [a, b, c]
  return :invalid if angles.sum != 180 || angles.any? { |x| x <= 0 }
  return :right if angles.include?(90)
  return :acute if angles.all? { |x| x < 90 }
  return :obtuse
end
