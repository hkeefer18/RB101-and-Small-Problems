# degrees * (60*60) divmod (60*60) gives whole degrees
# and seconds
# seconds divmod (60) gives minutes and seconds


SECONDS_PER_MINUTE = 60
MINUTES_PER_DEGREE = 60
SECONDS_PER_DEGREE = SECONDS_PER_MINUTE * MINUTES_PER_DEGREE

def dms(angle)
  total_seconds = angle * SECONDS_PER_DEGREE
  degrees, seconds = total_seconds.divmod(SECONDS_PER_DEGREE)
  minutes, seconds = seconds.divmod(SECONDS_PER_MINUTE)
  format(%(#{degrees}°%02d'%02d"), minutes, seconds)
end

dms(30)
dms(76.73)
dms(254.6)
dms(93.034773)
dms(0)
dms(360)

