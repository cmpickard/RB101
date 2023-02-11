# In this hash of people and their age,

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
# see if "Spot" is present.

# Bonus: What are two other hash methods that would work just as well for this
# solution?

puts 'false' if !ages.assoc("Spot")

# BONUS
puts ages.any?("Spot")

puts ages.fetch("Spot", false)