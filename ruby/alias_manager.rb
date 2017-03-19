
def next_vowel(letter)
    vowel = ["a", "e", "i", "o", "u"]
    next_index = vowel.index(letter) + 1
    if vowel[next_index] == nil 
      letter = vowel[0]
    else
      letter = vowel[next_index]
    end
    print letter
  end


def next_consonant(letter)
    consonant = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"]
    next_index = consonant.index(letter) + 1
    if consonant[next_index] == nil 
      letter = consonant[0]
    else
      letter = consonant[next_index]
    end
    print letter
  end

#swap first and last name
name = "Felicia Torres"
name = name.split(' ').reverse!.join(' ').downcase
# p name

#change vowels to next vowel
vowel = ["a", "e", "i", "o", "u"]
consonant = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"]
name = name.split('')
# p name

name.each do |letter|
  vowel.each do |vowel|
    if letter == vowel
      next_vowel(vowel)
    end
  end
end

name.each do |letter|
  consonant.each do |consonant|
    if letter == consonant
      next_consonant(consonant)
    end    
  end
end







  
    