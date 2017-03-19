def next_vowel(letter)
    vowel = ["a", "e", "i", "o", "u"]
    next_index = vowel.index(letter) + 1
    if vowel[next_index] == nil 
      p vowel[0]
    else
      p vowel[next_index]
    end
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
index_count = 0
name.each do |letter|
  vowel.each do |vowel|
    if letter == vowel
      next_vowel(vowel)
# get the index of this matched letter, add one to it and store the new letter      
    end
  end
end


  
    