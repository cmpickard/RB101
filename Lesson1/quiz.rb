def string_lengths(sentence)
  strings = sentence.split
  lengths = []
  counter = 1

  until counter == strings.size do
    word_length = strings[counter - 1].length
    lengths.push(word_length)
    counter += 1
  end

  lengths
end

sent = "I am not ok"
p string_lengths(sent)

def extend_greeting(greeting)
  greeting += " there"
end

greeting = "hi"
extend_greeting(greeting)

puts greeting