def show_multiplicative_average(array)
  avg = array.inject(:*) / array.size.to_f
  puts "The result is #{format('%.3f', avg)}"
end
show_multiplicative_average([3, 5])