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


  while letter_count < password.length
   print password[letter_count].next
   letter_count +=1
  
  end
end 

p encrypt("world")

#Decrypt

def decrypt(password)

  alpha = "abcdefghijklmnopqrstuvwxyz"
  letter_count = 0 

  while letter_count < password.length
    letter = password[letter_count]
    number = alpha.index("#{letter}")
    p alpha[number.to_i-1]
    letter_count +=1
  end 
end 

p decrypt("lauren")

