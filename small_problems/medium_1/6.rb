=begin

Given a string, perform operations for each word or
  number in the string in order from left to right.

Inputs: Every number in the string becomes the new
  register value
  -each word in the string is a command to do something
    to the register and/or stack

Outputs: after each operation is performed there
    will be a new stack and new register value, which
    may be printed

Data Structure:
The stack will be an array, the register a single number
Case statement to determine which operation to perform
Each method to go through each word in the string

Algorithm

Initialize the stack [] and the register 0
Split the string into an array of words and numbers
For each word, check if it is a number. If it is, 
    reassign the register to that value.
If it is a word, perform some operation on the stack/register
    -PUSH: push register value to stack
    -ADD: pop top stack value and add to register
    -SUB: pop top stack value and subtract from register
    -MULT: pop top stack value and multiply it by register
    -DIV: pop top stack value and divide into register
    -MOD: pop top stack value and divide into register
      and store remainder in register
    -POP: pop top stack value and place in register
    -PRINT: print register

=end

def minilang(string)
  stack = []
  register = 0
  words_nums = string.split
  words_nums.each do |word|
    if word.to_i.to_s == word
      register = word.to_i
    else
      case word
      when 'PUSH' then stack << register
      when 'ADD' then register += stack.pop
      when 'SUB' then register -= stack.pop
      when 'MULT' then register *= stack.pop
      when 'DIV' then register /= stack.pop
      when 'MOD' then register %= stack.pop
      when 'POP' then register = stack.pop
      when 'PRINT' then puts register
      end
    end
  end
end

# FURTHER EXPLORATION

minilang('3 PUSH 5 MOD PUSH 7 PUSH 5 PUSH 4 MULT PUSH 3 ADD SUB DI
V PRINT')
(3 + (4 * 5) - 7) / (5 % 3)