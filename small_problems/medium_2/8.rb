=begin

Write a method that will return the first number after
the number passed in as an argument that is a multiple
of 7 and is odd and does not have any digits repeated.

numbers greater than 1,023,456,986 should return error

Algorithm
Loop until current number is 1023456987
Check if current number is odd, div by 7, and has unique
digits
  current number digits should equal current number digits unique
break if ^^ true and return current number
if false, += 1

=end

def featured(start)
  current_number = start
  if current_number > 1023456986 # Thought this was the last number that would work based on test cases but that's not true
    return 'There is no possible number that fulfills those requirements'
  else
    loop do
      current_number += 1
      break if current_number.odd? && current_number % 7 == 0 && current_number.digits == current_number.digits.uniq
    end
  end
  current_number
end

# Redo after seeing solution with 14 increments and correct break for too large a number
def featured(num)
  num += 1
  num += 1 until num.odd? && num % 7 == 0

  loop do
    return num if num.digits == num.digits.uniq
    num += 14
    break if num >= 9_876_543_210
  end
  'There is no possible number that fulfills those requirements'
end