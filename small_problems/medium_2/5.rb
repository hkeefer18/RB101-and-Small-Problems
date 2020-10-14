=begin

Conditions:
Equilateral- all sides equal, length > 0
Isosceles- two sides equal, length > 0, two shortest sides
  greater than longest
Scalene- no side equal, length > 0, two shortest sides > longest

All in common- if length <= 0, return :invalid

Return Equi if all equal

Return invalid if two shortest sides <= longest

Return Is if either first two or last two elements equal

else return Sca

=end

def triangle(a, b, c)
  return :invalid if a <= 0 || b <= 0 || c <= 0
  return :equilateral if a == b && b == c
  arr = [a, b, c].sort
  return :invalid if arr[0] + arr[1] <= arr [2]
  return :isosceles if a == b || b == c
  return :scalene
end