=begin

A fibonacci number is the sum of the two numbers before
  it starting with 1 and 1.

The method should return 1 if n is 1 or 2
Else return the Fibonacci of n-1 plus the fibonacci
  of n - 2

=end

def fibonacci(n)
  return 1 if n <= 2
  fibonacci(n - 1) + fibonacci(n - 2)
end

fibonacci(1) == 1
fibonacci(2) == 1
fibonacci(3) == 2
fibonacci(4) == 3
fibonacci(5) == 5
fibonacci(12) == 144
fibonacci(20) == 6765