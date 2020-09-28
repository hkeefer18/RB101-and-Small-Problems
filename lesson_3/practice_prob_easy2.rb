=begin

1)
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
ages.include?("Spot")
ages.member?("Spot")
ages.has_key?("Spot")

2)
munsters_description = "The Munsters are creepy in a good way."

munsters_description.swapcase!
munsters_description.capitalize!
munsters_description.downcase!
munsters_description.upcase!

3)
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }
additional_ages = { "Marilyn" => 22, "Spot" => 237 }
ages.merge!(additional_ages)

4)
advice = "Few things in life are as important as house training your pet dinosaur."
advice.include?("Dino")
advice.match?("Dino")

5)
flintstones = ["Fred", "Barney", "Wilma", "Betty", "BamBam", "Pebbles"]
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

6)
flintstones << 'Dino'

7)
flintstones.concat(%w(Dino Hoppy))
flintstones.push('Dino', 'Hoppy')

8)
advice = "Few things in life are as important as house training your pet dinosaur."
advice.slice!("Few things in life are as important as ")
advice.slice!(0, advice.index('house'))
^^ deletes starting at element 0 and ending at house

9)
statement = "The Flintstones Rock!"
statement.count('t')

10)
title = "Flintstone Family Members"
title.center(40)

=end
