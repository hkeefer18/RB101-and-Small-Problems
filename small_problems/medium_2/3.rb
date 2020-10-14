LOWERCASE = ('a'..'z').to_a.join
UPPERCASE = ('A'..'Z').to_a.join

def letter_percentages(string)
  lower = (string.count(LOWERCASE).to_f / string.size) * 100
  upper = (string.count(UPPERCASE).to_f / string.size) * 100
  neither = 100 - lower - upper
  { lowercase: lower.round(2), uppercase: upper.round(2), neither: neither.round(2) }
end

letter_percentages('abCdef 123')
letter_percentages('123')
letter_percentages('abcdefGHI')