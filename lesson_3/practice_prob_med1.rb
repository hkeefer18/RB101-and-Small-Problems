=begin

1)
phrase = The Flintstones Rock!
10.times { |num| puts (num * ' ') + phrase }

2)
puts "the value of 40 + 2 is " + (40 + 2)

You can't concatenate an integer to a string

puts "the value of 40 + 2 is " + (40 + 2).to_s
puts "the value of 40 + 2 is #{40 + 2}"

3)
def factors(number)
  divisor = number
  factors = []
  while divisor > 0 do
    factors << number / divisor if number % divisor == 0
    divisor -= 1
  end
  factors
end

4)
+ does not mutate the caller so new elements will
not be permanently added

5)
The limit variable is in the outer scope and is not
accessible to the method definition.
You can add a parameter to the method and pass in
the limit variable as the argument. Or you can initialize
the limit variable within the method definition.

6)
34
The operation performed on answer within the method
did not mutate the number because numbers are immutable.
It just pointed to a new object.

7)
Yes, the method acts directly on the hash that is passed
in as the argument and reassigns the keys to new values.

8)
'paper'

9)
'no'