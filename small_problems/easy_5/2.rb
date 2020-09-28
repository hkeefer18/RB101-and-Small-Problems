=begin

given the number of minutes before midnight (negative)
or after midnight (positive), return a string with
the time in hh:mm format

input: number of minutes before or after midnight
implicit input: number of hours and minutes (calculate)

data structure: / 60 and % 60
                if less than 0 24-hours and 60-min
                else 00+hours and 00+min

=end

def time_of_day(minutes)
  if minutes < 0
    hh = 23 - ( (minutes.abs / 60) % 24 )
    mm = 60 - ( minutes.abs % 60 )
  else
    hh = ( minutes.abs / 60 ) % 24
    mm = minutes.abs % 60
  end
  "#{"%02d" % hh}:#{"%02d" % mm}"
end

time_of_day(0) == "00:00"
time_of_day(-3) == "23:57"
time_of_day(35) == "00:35"
time_of_day(-1437) == "00:03"
time_of_day(3000) == "02:00"
time_of_day(800) == "13:20"
time_of_day(-4231) == "01:29"

# Further exploration

total_days_passed = { positive: { 0 => 'Sunday', 1 => 'Monday',
  2 => 'Tuesday', 3 => 'Wednesday', 4 => 'Thursday',
  5 => 'Friday', 6 => 'Saturday'},
  negative: { 6 => 'Sunday', 5 => 'Monday',
  4 => 'Tuesday', 3 => 'Wednesday', 2 => 'Thursday',
  1 => 'Friday', 0 => 'Saturday'}
}

def day_and_time(minutes, days_hash)
  full_days = (minutes.abs / (60 * 24)) % 7 # % 7 takes care of cases where a week or weeks have passed
  if minutes < 0
    days_hash[:negative][full_days] + ' ' + time_of_day(minutes)
  else
    days_hash[:positive][full_days] + ' ' + time_of_day(minutes)
  end
end

puts day_and_time(-4231, total_days_passed)
