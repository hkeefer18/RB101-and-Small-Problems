flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

hash = Hash.new

flintstones.each_with_index { |name, i|
  hash[name] = i 
}

p hash