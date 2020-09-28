puts "What is the bill?"
bill = gets.chomp.to_f

puts "What is the tip percentage?"
tip_percent = gets.chomp.to_f

tip = bill * (tip_percent/100)
total = bill + tip

tip_decimal = sprintf("%.2f", tip)
total_decimal = sprintf("%.2f", total)

puts "The tip is $#{tip_decimal}."
puts "The total is $#{total_decimal}."
