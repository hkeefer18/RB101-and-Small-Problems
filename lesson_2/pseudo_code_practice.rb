=begin

1. a method that returns the sum of two integers

Ask the user for two integers to add together
  - save each string as a variable
  - change from string to integer
  - add the two integers
  - output the result

START

  # Write a method that returns the sum of two integers

GET two numbers from user

SET each input as number1 and number2

Add the two numbers together and change them to integers

PRINT result

END


2. a method that takes an array of strings, and returns a string that is all those strings concatenated together

Iterate through each index position in the array
  - Concatenate the first two strings together and save as a variable
  - Iterate through the rest of the array, each time adding the string
    at the next position and reassigning the variable to the newly created string
  - output the completed string

START

# Given an array of strings, concatenate all the strings into one string

Initiate the variable current_string = array[0]
SET counter = 1

WHILE counter < length of array
  SET new_string = concatenation of current_string and array[counter]
  SET current_string = new_string
  SET counter = counter + 1

PRINT current_string

END

=end

def concatenate(array)
  current_string = array[0]
  counter = 1
  while counter < array.length
    new_string = current_string + ' ' + array[counter]
    current_string = new_string
    counter += 1
  end

  puts current_string
end

concatenate(['Hello', 'world,', 'my', 'name', 'is', 'Hayley'])

=begin

3. a method that takes an array of integers and returns a new array with every other element

Iterate through the array
  -count each iteration
  -skip even indices
  -delete odd indices
  -output new array

START

SET counter = 0

WHILE counter < length of array
  IF counter is odd
    delete element array[counter]

    counter = counter + 1

PRINT array

END

=end

def every_other_element(array)
  counter = 0
  new_array = []
  original_array_length = array.length
  while counter < original_array_length
    if counter.even?
      new_array << array.shift
    else
      array.shift
    end
  counter += 1
  end
  puts new_array
end

every_other_element([1, 2, 3, 4, 5, 6, 7, 8, 9, 10])

# Original logic did not work, only found out when writing
# the code and testing it. Changed strategies to shift
# even indices to new array