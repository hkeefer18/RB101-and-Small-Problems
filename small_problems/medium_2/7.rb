=begin

For each day in the given year, count the number of times it
is both friday and the 13th of the month.

=end

def friday_13th(year)
  months = (1..12).to_a
  friday_13th = 0
  months.each do |month|
    if Time.local(year, month, 13).friday?
      friday_13th += 1
    end
  end
  friday_13th
end