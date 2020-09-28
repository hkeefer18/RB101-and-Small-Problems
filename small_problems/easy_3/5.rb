def multiply(num_1, num_2)
  num_1 * num_2
end

def square(num)
  multiply(num, num)
end

def power_to_the_n(num, n)
  product = 1
  n.times { product = multiply(product, num) }
  product
end

puts power_to_the_n(5, 3)