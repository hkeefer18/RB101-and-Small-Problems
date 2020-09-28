def palindromic_num?(num)
  num_ary = num.digits
  num_ary == num_ary.reverse
end

puts palindromic_num?(34543)
puts palindromic_num?(123210)
puts palindromic_num?(22)
puts palindromic_num?(5)