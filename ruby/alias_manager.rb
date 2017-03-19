def spy_name(name)
    #Put real name into lowercase then split and switch first and last name position
    name = name.downcase.split.rotate

    #Cycles through the last and first name and shifts the letters
    name.map! do |real_name|
        #Separate then shift the vowels to create new vowel list for translation
        vowels = "aeiou"
        new_vowels = vowels.split('').rotate.join
        #Separate then shift the consonants to create new consonant list for translation
        consonants = "bcdfghjklmnpqrstvwxyz"
        new_consonants = consonants.split('').rotate.join


        #Translate original vowels and consonants to new vowels and consonants
        real_name.tr!(vowels, new_vowels)
        real_name.tr!(consonants, new_consonants)
        
        #Capitalize first letter in first and last name
        real_name = real_name.split('')
        real_name[0] = real_name[0].upcase
        real_name = real_name.join
    end
    name = name.join(' ')
    p name
end

#User interface
puts "Please enter a name into the Spy Name Generator? Or type 'quit' to exit"

#continues adding real name:new name combos to the spy roster until user types quit
while input = gets.chomp do
    break if input == "quit"

    spy_roster = {
        real_name: input,
        new_name: spy_name(input)
    }
    names.push(spy_roster)
  end

    # print names
