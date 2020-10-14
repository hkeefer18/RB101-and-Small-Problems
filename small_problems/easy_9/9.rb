GRADES = { (90..100) => 'A', (80...90) => 'B', (70...80) => 'C',
  (60...70) => 'D', (0...60) => 'F' }

def get_grade(score1, score2, score3)
  avg = (score1 + score2 + score3) / 3
  score_range = GRADES.select do |score, _|
    score.cover?(avg)
  end
  score_range.values[0]
end

get_grade(95, 90, 93) == "A"
get_grade(50, 50, 95) == "D"