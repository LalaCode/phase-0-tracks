#swap first and last name
name = "Felicia Torres"
name = name.split(' ').reverse!.join(' ').downcase
# p name

#change vowels to next vowel
vowel = ["a", "e", "i", "o", "u"]
consonant = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"]
name = name.split('')
# p name
index_count = 0

name.each do |letter|
  vowel.each do |vowel|
    if letter == vowel
      p vowel
    end
  end
end

    