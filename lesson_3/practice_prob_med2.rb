=begin

1)
Inside the first block, the object id's are the same as
outside

After reassignment, the object id's are all different
from at the beginning

After inner is pointed to outer, both have the same id
as after reassignment

After the block the object id's have retained
the final id it was assigned within the block and
is different from the beginning

2)
After the method an_illustrative_method is called,
the object id's have not changed because the method
call takes values as parameters and does not change
the value assigned to the variable name that was
passed in.

3)
my_string = "pumpkins"
my_array = ["pumpkins", "rutabaga"]

String#+= creates a new string object and points to that object
Therefore, my_string points to a different object
than a_string_param

Array#<< adds an element to the object the variable was
pointing too. an_array_param was pointing to the same
object that my_array was pointing to, so when the element
got added to the object an_array_param was pointing to,
it acted on the object my_array was pointing to too.

4)
String#<< concatenates to the original object and does not
create a new object. a_string_param and my_string
point to the same object by the end of the method call.

an_array_param was simply reassigned within the method,
so an_array_param points to a different object than
my_array.

5)
Explicitly return both a_string_param and an_array_param
at the end of the method. Outside the method, reassign
my_string and my_array to the return of calling
not_so_tricky_method on the arguments my_string and my_array.

def not_so_tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param += ["rutabaga"]

  return a_string_param, an_array_param
end

my_string = "pumpkins"
my_array = ["pumpkins"]
my_string, my_array = not_so_tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

6)
def color_valid(color)
  color == 'blue' || color == 'green'
end