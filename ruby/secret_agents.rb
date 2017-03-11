

# -While letter count is less than the password length
    #-use letter count to indicate index position of letters in password.
    #-call next method on indicated letter.
    #-print result.
    #-advance letter count by one
#- print the password

# METHOD DECLARATIONS

#encrypts a password
def encrypt(password)
  
  
letter_count = 0
alpha = "abcdefghijklmnopqrstuvwxyz"

# loops over the password letters until all letters have been accounted for 
 while letter_count < password.length
    # deletes 
     if password[letter_count] == "z"
      password[letter_count] = password[letter_count].replace "a"
        
    else
        password[letter_count] = password[letter_count].replace password[letter_count].next

    end

   letter_count +=1


  end
       p password


end




#Decrypt
# -define decrypt with a single argument
# -Set letter count to zero
# -Set alpha variable to alphabet
# -While letter count is less than the password length
  # set variable letter equal to the indexed letter of the password
  # set variable number equal to the index number of the selected letter
  # replace and store the selected letter with the letter before it in the variable
  # increase letter count by one
# print password

def decrypt(password)

  alpha = "abcdefghijklmnopqrstuvwxyz"
  letter_count = 0 

  while letter_count < password.length  
  
    letter = password[letter_count]
    number = alpha.index("#{letter}")
    password[letter_count] = password[letter_count].replace alpha[number.to_i-1]
    letter_count +=1
  end 
  p password
end 

decrypt(encrypt("abc"))

