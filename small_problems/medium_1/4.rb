=begin

Create an array (1..n).to_a
array product ['on']
Create hash from array
counter = 2
Iterate through hash. If hash key is a multiple of counter,
  and value is on, set value to off or if off
  set value to on. If statement with ternary operator.
  Counter += 1
  Break if counter > n
Convert hash back to array
Select elements in array with element 1 == 'on'
Map over array and take element 0 only

=end

def toggle(n)
  hash = ((1..n).to_a).product(['off']).to_h
  counter = 1
  loop do
    hash.each do |switch, on_off|
      if switch % counter == 0
        on_off == 'on' ? hash[switch] = 'off' : hash[switch] = 'on'
      end
    end
    counter += 1
    break if counter > n
  end
  hash.select { |_switch, on_off| on_off == 'on' }.keys
end
