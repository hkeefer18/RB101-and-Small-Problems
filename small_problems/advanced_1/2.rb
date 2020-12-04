STARS = 3

def star(n)
  num_lines = n / 2
  num_spaces_before_stars = 0
  num_spaces_btwn_stars = num_lines - 1
  increment = -1
  loop do
    counter = num_lines
    loop do
      line = "#{' ' * num_spaces_before_stars}"
      STARS.times { line << "*#{' ' * num_spaces_btwn_stars}" }
      puts line
      counter -= 1
      break if counter == 0
      num_spaces_btwn_stars -= (increment * -1)
      num_spaces_before_stars += (increment * -1)
    end
    break if num_spaces_before_stars == 0
    puts "#{'*' * n}"
    increment = 1
  end
end
