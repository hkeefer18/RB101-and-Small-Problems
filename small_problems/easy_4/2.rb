=begin
Input a year, output the century plus st, nd, rd, or th
1-100 is 1st
101-200 is 2nd
so on

Year minus 1 divided by 100

The year 2000 - 1 is 1999
Divide 1999 by 100 which is 19.
The year 200 - 1 is 199
Divided by 100 is 1.
The year 100 - 1 is 99
Divided by 100 is 0.

Edge case year 1 will result in 0 division error
Can make if statement to cover this one case

Add 1 to the result of the division to get the century #

if last two numbers are 11, 12, 13
  th
else if last number 1
  st
else if last number 2
  nd
else if last number 3
  rd
else
  th

Convert century # to string, concat the ending

=end


century_rules = { '1' => 'st', '2' => 'nd', '3' => 'rd',
'4' => 'th', '5' => 'th', '6' => 'th', '7' => 'th',
'8' => 'th', '9' => 'th', '0' => 'th'}

def century(year, rules)
  if year == 1
    '1st'
  else
    century = (((year - 1) / 100) + 1).to_s
    if ['11', '12', '13'].include?(century[-2, 2])
      century + 'th'
    else
      century + rules[century[-1]]
    end
  end
end

puts century(1, century_rules)
puts century(2000, century_rules)
puts century(2001, century_rules)
puts century(1965, century_rules)
puts century(256, century_rules)
puts century(5, century_rules)
puts century(10103, century_rules)
puts century(1052, century_rules)
puts century(1127, century_rules)
puts century(11201, century_rules)
