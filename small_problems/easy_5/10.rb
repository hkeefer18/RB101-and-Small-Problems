=begin

Method takes a string and prints that string within a box

Explicit input
  string
Implicit Input
  string size

Algorithm
Five puts lines
1) +-(-*string.size)-+
2) | ( *string.size) |
3) | string |
4) same as 2
5) same as 1

=end

def print_in_box(string)
  puts "+-#{'-' * string.size}-+"
  puts "| #{' ' * string.size} |"
  puts "| #{string} |"
  puts "| #{' ' * string.size} |"
  puts "+-#{'-' * string.size}-+"
end

# Further exploration

def print_in_box_80(string)
  string = string[0, 76]
  puts "+-#{'-' * string.size}-+"
  puts "| #{' ' * string.size} |"
  puts "| #{string} |"
  puts "| #{' ' * string.size} |"
  puts "+-#{'-' * string.size}-+"
end

# Further further exploration

=begin

loop until entire message has printed
-set counter = 0, max_char = 76 
  -start with short_string = string[0, 76] i.e. [counter, max_char*(counter+1)]
    -puts the short_string in the box
      -need to add white space to the last line if
       less than 76 chars. #{' ' * (76 - short_string.size)}
    -Delete short_string from string
    -counter += 1
  -break if string empty

=end

MAX_CHAR = 76

def print_in_box_wrap(string)
  box_length = string[0, MAX_CHAR].size # 76 or less
  puts "+-#{'-' * box_length}-+"
  puts "| #{' ' * box_length} |"

  loop do
    short_string = string[0, MAX_CHAR] # first 76 characters
    puts "| #{short_string}#{' ' * (MAX_CHAR - short_string.size)} |" # string and more spaces if needed
    string = string.slice(short_string.size..) #returns characters remaining beyond last character of short_string
    break if string.empty?
  end

  puts "| #{' ' * box_length} |"
  puts "+-#{'-' * box_length}-+"
end

print_in_box_wrap("")
print_in_box_wrap('hello')
franken_string = 'As I applied so closely, it may be easily conceived that my progress was rapid. My ardour was indeed the astonishment of the students, and my proficiency that of the masters. Professor Krempe often asked me, with a sly smile, how Cornelius Agrippa went on, whilst M. Waldman expressed the most heartfelt exultation in my progress. Two years passed in this manner, during which I paid no visit to Geneva, but was engaged, heart and soul, in the pursuit of some discoveries which I hoped to make. None but those who have experienced them can conceive of the enticements of science. In other studies you go as far as others have gone before you, and there is nothing more to know; but in a scientific pursuit there is continual food for discovery and wonder.'
print_in_box_wrap(franken_string)
puts franken_string