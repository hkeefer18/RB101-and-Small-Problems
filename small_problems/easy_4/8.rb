DIGITS = { '1' => 1, '2' => 2, '3' => 3, '4' => 4, '5' => 5,
  '6' => 6, '7' => 7, '8' => 8, '9' => 9, '0' => 0 }

def string_to_signed_integer(str)
  sign = sign(str)
  array = []
  str.each_char do |digit|
    array << DIGITS[digit]
  end
  array.reverse!.map!.with_index { |digit, i| digit * (10 ** i) }
  array.sum * sign
end

def sign(str)
  if str[0] == '+'
    str.delete!('+')
    1
  elsif str[0] == '-'
    str.delete!('-')
    -1
  else
    1
  end
end

p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100

# Solution
=begin
def string_to_signed_integer(string)
  case string[0]
  when '-' then -string_to_integer(string[1..-1])
  when '+' then string_to_integer(string[1..-1])
  else          string_to_integer(string)
  end
end
=end