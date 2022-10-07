message = ".-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ..."
MorseElelmentsHash = {
  A: '.-', B: '-...', C: '-.-.', D: '-..', E: '.', F: '..-.', G: '--.', H: '....',
  I: '..', J: '.---', K: '-.-', L: '.-..', M: '--', N: '-.', O: '---', P: '.--.',
  Q: '--.-', R:  '.-.', S: '...', T: '-', U: '..-', V: '...-', W: '.--', X: '-..-',
  Y: '-.--', Z: '--..',
  ',': '.-.-.-',
  '.': '--..--',
  '?': '..--..',
  '!': '-.-.--',
  ' ': ' ',
}.freeze

def unitary_decoder(input)
  letter = MorseElelmentsHash.key(input)
end

def word_decoder(input)
  word = input.split(/ /).map { |letter| unitary_decoder(letter) }.join
  "#{word} "
end

def sentence_decoder(input)
  message = ''
  input.split(/   /).map { |word| message += word_decoder(word) }
  message
end

puts "Welcome to the Morse Code Decoder"
puts " "
puts " "
puts "- long signal is represented by '-'"
puts "- short signal is represented by '.'"
puts "- a space between words is represented by 3 empty spaces"
puts "- the single space between elements is a separation of letters"
puts " "
puts " "
print "The morse code '.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...' means:  "
puts sentence_decoder(message)
puts " "
print "The morse code '-.-. --- .-.. -..' means:  "
puts sentence_decoder("-.-. --- .-.. -..") # => COLD
puts " "
print "The morse code '-.-.' means:  "
puts sentence_decoder("-.-.") # => C
