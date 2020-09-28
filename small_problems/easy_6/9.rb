def include?(array, search)
  counter = 0
  loop do
    if counter == array.size
      return false
    elsif array[counter] == search
      return true
    else
      counter += 1
    end
  end
end

include?([1,2,3,4,5], 3) == true
include?([1,2,3,4,5], 6) == false
include?([], 3) == false
include?([nil], nil) == true
include?([], nil) == false

# LS solution

def include?(array, search)
  !!array.find_index(search) # if match exists, returns 
  # index number of match, otherwise nil. !! forces to
  # boolean true or false
end
