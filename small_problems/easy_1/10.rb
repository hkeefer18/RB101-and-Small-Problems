def calculate_bonus(salary, bonus)
  if bonus
    return salary / 2
  else
    return 0
  end
end

puts calculate_bonus(1500, true)
puts calculate_bonus(500, false)

def calculate_bonus(salary, bonus)
  bonus ? (salary / 2) : 0
end