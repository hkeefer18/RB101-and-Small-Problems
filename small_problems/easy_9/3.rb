def negative(number)
  case
  when number > 0 then number * -1
  else number
  end
end

negative(5) == -5
negative(-3) == -3
negative(0) == 0      # There's no such thing as -0 in ruby

def negative(number)
  number > 0 ? -number : number
end