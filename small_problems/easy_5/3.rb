=begin

Given a string with hours and minutes separated by
a colon, return the number of minutes before or
after midnight.

Algorithm
Split the string on the colon and convert to integer.
Multiply the hours by 60. Add the result to the 
minutes. Modulo (60*24) to account for case 24:00.
This is the minutes after midnight.
For before midnight do the same thing but return
(24*60) minus the total minutes.

=end

def after_midnight(string)
  hours_minutes = string.split(':')
  ((hours_minutes[0].to_i * 60) + hours_minutes[1].to_i) % (60*24)
end

def before_midnight(string)
  hours_minutes = string.split(':')
  total_min = ((hours_minutes[0].to_i * 60) + hours_minutes[1].to_i)
  if total_min == 0
    0
  else
    (60 * 24) - total_min
  end
end

after_midnight('00:00') == 0
before_midnight('00:00') == 0
after_midnight('12:34') == 754
before_midnight('12:34') == 686
after_midnight('24:00') == 0
before_midnight('24:00') == 0
