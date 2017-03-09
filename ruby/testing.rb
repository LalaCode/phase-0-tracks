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



