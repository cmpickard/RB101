#Starting with the string:
famous_words = "seven years ago..."
#show two different ways to put the expected "Four score and " in front of it.

#method1
famous_words.prepend("Four score and ")

#method2
famous_words = "seven years ago..."
beginning = "Four score and "
famous_words = beginning + famous_words

#method3
famous_words = "seven years ago..."
"Four score and " << famous_words
