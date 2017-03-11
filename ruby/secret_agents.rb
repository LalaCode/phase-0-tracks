
# METHOD DECLARATIONS

#encrypts a password
def encrypt(password)
  
  
letter_count = 0
alpha = "abcdefghijklmnopqrstuvwxyz"

# loops over the password letters until all letters have been accounted for 
 while letter_count < password.length
    # manage end case scenario 
     if password[letter_count] == "z"
      password[letter_count] = password[letter_count].replace "a"

     #replace current letter with the letter following it in the alphabet    
    else
        password[letter_count] = password[letter_count].replace password[letter_count].next

    end
    # advance letter count by one
   letter_count +=1


  end
       p "ENCRYPTED PASSWORD: #{password}"


end


#decryptps a password
def decrypt(password)

  alpha = "abcdefghijklmnopqrstuvwxyz"
  letter_count = 0 

# loops over the password letters until all letters have been accounted for 
  while letter_count < password.length  
    # identify current letter
    letter = password[letter_count]
    # identify index number of current letter
    number = alpha.index("#{letter}")
     #replace current letter with the letter preceding it in the alphabet    
    password[letter_count] = password[letter_count].replace alpha[number.to_i-1]
     # advance letter count by one
    letter_count +=1
  end 
  p "DECRYPTED PASSWORD: #{password}"
end 


#DRIVER CODE

#ask for encryption or decryption
p "Greetings, would you like to encrypt or decrypt your password?"
p "Type: encrypt or decrypt"
operation = gets.chomp
 
#confirm operation availability 
until operation == "encrypt" || operation == "decrypt" 
  p "That is not a valid option."
  p "Please type: encrypt or decrypt"
  operation = gets.chomp 
end 

#ask for password
p "What is your password?"
password = gets.chomp

#run operation
if operation == "encrypt"
  encrypt(password)
elsif operation == "decrypt"
  decrypt(password)
end
    

#NESTED METHOD DRIVER DEMO
#decrypt(encrypt("rio"))

