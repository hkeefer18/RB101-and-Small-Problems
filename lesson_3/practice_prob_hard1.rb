=begin

1)
nil will be returned. Even though the if block does
not execute, the greeting variable is initialized to nil
and no exception is raised.

2)
{ :a => 'hi there' }

3)
A and B the variables point to the same object before and
after the method call and those objects are not mutated
in the method.
C does mutate the objects passed in as arguments and
therefore the values of the variables have changed,
thought the object id's have not.

4)
def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  return false if dot_separated_words.size != 4
  
  while dot_separated_words.size > 0 do
    word = dot_separated_words.pop
    return false unless is_an_ip_number?(word)
  end
 
  true
end