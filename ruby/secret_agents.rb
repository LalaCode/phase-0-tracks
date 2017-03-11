#Encrypt

# -define encrypt with a single argument
# -Set letter count to zero
# -While letter count is less than the password length
    #-use letter count to indicate index position of letters in password.
    #-call next method on indicated letter.
    #-print result.
    #-advance letter count by one.

def encrypt(password)
  
  
letter_count = 0
alpha = "abcdefghijklmnopqrstuvwxyz"


 while letter_count < password.length

     if password[letter_count].next.include? "aa"
        p alpha[0]
    else
        password[letter_count] = password[letter_count].replace password[letter_count].next

    end

   letter_count +=1


  end
       p password


end




#Decrypt

def decrypt(password)

  alpha = "abcdefghijklmnopqrstuvwxyz"
  letter_count = 0 

  while letter_count < password.length  
  
    letter = password[letter_count]
    number = alpha.index("#{letter}")
    print alpha[number.to_i-1]
    letter_count +=1
  end 
end 

decrypt(encrypt("swordfish"))

