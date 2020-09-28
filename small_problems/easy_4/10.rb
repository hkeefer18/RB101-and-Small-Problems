DIGITS = { 0 => '0', 1 => '1', 2 => '2', 3 => '3', 4 => '4',
  5 => '5', 6 => '6', 7 => '7', 8 => '8', 9 => '9' }

def signed_integer_to_string(int)
  str_ary = int.abs.digits.reverse.map { |digit| digit = DIGITS[digit] }
  if int < 0
    str_ary.prepend('-')
  elsif int > 0
    str_ary.prepend('+')
  end
  str_ary.join
end

signed_integer_to_string(4321) == '+4321'
signed_integer_to_string(-123) == '-123'
signed_integer_to_string(0) == '0'