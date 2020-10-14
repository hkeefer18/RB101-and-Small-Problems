def fibonacci(nth)
  return 1 if nth <= 2
  first_number, second_number = 1, 1
  current_number = 0
  (nth - 2).times do
    current_number = first_number + second_number
    first_number, second_number = second_number, current_number
  end
  current_number
end

fibonacci(20)

# LS
def fibonacci(nth)
  first, last = [1, 1]
  3.upto(nth) do
    first, last = [last, first + last]
  end

  last
end