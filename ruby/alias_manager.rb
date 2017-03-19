#swap first and last name
name = "Felicia Torres"
name = name.split(' ').reverse!.join(' ')
# p name

#change vowels to next vowel
vowel = ["a", "e", "i", "o", "u"]
consonant = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"]
name = name.downcase.split('')

name.each do |letter|
  p letter
end

#change consonant to next consonant
