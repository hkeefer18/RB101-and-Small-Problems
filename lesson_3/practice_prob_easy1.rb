=begin
1)
numbers = [1, 2, 2, 3]
numbers.uniq

puts numbers

Output is
1
2
2
3

uniq doesn't mutate the caller. puts calls to_s on its
argument and that's why the output isn't an array

p numbers would output [1, 2, 2, 3] because it calls inspect
on its argument. puts numbers.inspect would do the same

2)
!= means does not equal, and you would use it when
comparing two objects

! before something changes the truthiness of the object.
!true is false and !false is true, etc

! after something typically means the method mutates
the caller

? before something is the ternary operator

? after something typically means the method will
return true or false

!! before something returns the truthiness of the object

3)
advice = "Few things in life are as important as house
training your pet dinosaur."
advice.gsub!('important', 'urgent')

4)
delete_at will delete the element at the index number
given as the argument. In this case it will delete
the element 2. delete will delete the element given
as the argument. In this case it will delete the element 1.

5)
Array(10..100).include?(42)
(10..100).cover?(42)

6)
famous_words = "seven years ago..."
puts "Four score and " + famous_words
puts "Four score and " << famous_words
puts famous_words.prepend("Four score and ")

7)
flintsontes.flatten!

8)
flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }
flintstones.keep_if { |k, v| v == 2 }
flintstones.to_a
p flintstones

flintstones.assoc("Barney") returns the matching key
value pair as a two element array. Does not mutate

=end