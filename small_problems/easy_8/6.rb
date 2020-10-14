def fizzbuzz(num1, num2)
  array = []
  num1.upto(num2).each do |num|
    if num % 3 == 0 && num % 5 == 0
      array << 'FizzBuzz'
    elsif num % 5 == 0
      array << 'Buzz'
    elsif num % 3 == 0
      array << 'Fizz'
    else
      array << num
    end
  end
  print array.join(', ')
end

fizzbuzz(1, 15)