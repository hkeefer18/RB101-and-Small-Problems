def triangle(num)
  counter = 1
  until counter > num
    puts "#{' ' * (num - counter)}#{'*' * counter}"
    counter += 1
  end
end

triangle(5)

# Further exploration

def triangle_upside_down(num)
  counter = num
  until counter == 0
    puts "#{' ' * (num - counter)}#{'*' * counter}"
    counter -= 1
  end
end

triangle_upside_down(5)