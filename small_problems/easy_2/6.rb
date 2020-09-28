for i in 1..99 do
  puts i if i.odd?
end

#further exploration

1.upto(99) { |i| puts i if i.odd? }

puts (1..99).to_a.select! { |i| i.odd? }