# Replace the word "important" with "urgent" in this string:

advice = "Few things in life are as important as house training your pet dinosaur."
advice.slice!(26,9)
advice.insert(26, "urgent")
puts advice
