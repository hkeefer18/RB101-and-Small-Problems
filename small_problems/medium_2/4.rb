=begin

There must be an equal number of '(' and ')', with each '('
occuring before a ')'

Data Structure/Algorithm
Array of characters of the string

The other characters don't matter so first select '(' ')'
out of the array.

Can use #index to find the index of the first occurence of '('
and compare it to the index of the first occurence of ')'. If
they occur in the correct order, delete those from the array
and do it again for the next '(' if there is one.

Do this until counter equals the count of '('

If the array is empty at the end, true, otherwise false

=end

def balanced?(string)
  parens = string.chars.select { |char| char == '(' || char == ')' }
  until parens.none? { |char| char == '(' }
    break if parens.none? { |char| char == ')' }
    open, close = parens.index('('), parens.index(')')
    if open < close
      parens.delete_at(open)
      parens.delete_at(close - 1) # elements have new index after first delete
    else
      break
    end
  end
  parens.empty?
end
