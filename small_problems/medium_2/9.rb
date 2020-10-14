=begin

Create a method that sorts an array by iterating through the
  array and exchanging elements if they need to be swapped.

The method will continue to iterate through the array until
  no swaps are made in a pass of the array.

Data Structure
#each_with_index to iterate through the array and to reassign
  elements to a new location in the array if necessary
Outer loop to continue to make passes until the array passed
  to #each is the same as the array after #each

Algorithm
Iterate through the array using #each_with_index and excluding
  the last element using slice [0..-2] since there will always
  be at least two elements
Check the current element against the next element
  -if the current element is greater than the next, reassign
    each element to the other element's index

In the outer loop before the #each runs, point a 'pre-mutate'
  variable to the array (duplicated) that is going to be iterated over.
After each run, check the pre-mutate array against the
  possibly just mutated array- if they are equal, no swaps were
  made and the loop can be broken.

=end

def bubble_sort!(array)
  loop do
    before_pass_array = array.dup

    array[0..-2].each_index do |i|
      if array[i] > array[i + 1]
        array[i], array[i + 1] = array[i + 1], array[i]
      end
    end

    break if before_pass_array == array
  end
end
  