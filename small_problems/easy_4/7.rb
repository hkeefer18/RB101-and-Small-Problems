DIGITS = { '1' => 1, '2' => 2, '3' => 3, '4' => 4, '5' => 5,
  '6' => 6, '7' => 7, '8' => 8, '9' => 9, '0' => 0}

def string_to_int(str)
  array = []
  str.each_char do |digit|
    array << DIGITS[digit]
  end
  array.reverse!.map!.with_index { |digit, i| digit * (10 ** i) }
  array.sum
end

p string_to_int('234')
p string_to_int('924768')
