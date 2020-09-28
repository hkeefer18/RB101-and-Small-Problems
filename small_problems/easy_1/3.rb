def digit_list(number)
  number.digits
end

puts digit_list(8)
puts digit_list(3457)


# Does same thing
def digit_list_solution(number)
  number.to_s.chars.map(&:to_i)
end

puts digit_list_solution(67349)