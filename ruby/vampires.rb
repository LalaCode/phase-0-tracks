# Vampire Questionnaire 

p "Hello, there.  What is your name?"
name = gets.chomp

p "Thank you, #{name}."
p "#{name}, How old are you?"
age = gets.chomp

p "What year were you born, #{name}?"
birth_year = gets.chomp

p "Our company cafeteria serves garlic bread. Should we order some for you? (y/n)"
garlic_bread = gets.chomp

p "Would you like to enroll in the company’s health insurance? (y/n)"
health_insurance = gets.chomp

# Birth Confirmation

if 2017-age.to_i == birth_year.to_i || 2017-age.to_i == birth_year.to_i+1
  birth_confirmation = true
else
  birth_confirmation = false
end

# Vampire detection

inconclusive = " "

if (birth_confirmation == true && garlic_bread == "y")||(birth_confirmation == true && health_insurance == "y")
   vampire_result = "Probably not a vampire"
 else vampire_result = inconclusive
end 

if (birth_confirmation == false && garlic_bread == "n")||(birth_confirmation == false && health_insurance == "n")
  vampire_result =  "Probably a vampire"
  else vampire_result = inconclusive
end 

if (birth_confirmation == false && garlic_bread == "n")&&(birth_confirmation == false && health_insurance == "n")
  vampire_result =  "Almost certainly a vampire" 
  else vampire_result = inconclusive
end 

if (name == "Drake Cula")||(name == "Tu Fang")
  vampire_result =  "Definitely a vampire"
  else vampire_result = inconclusive
end 

if vampire_result = inconclusive
  vampire_result = "Results inconclusive"
end


print vampire_result  

    
    