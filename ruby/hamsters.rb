correct = nil

while correct != "y"

p "What is the hamsters name?"
hamster_name = gets.chomp

p "What is the hamster's noise level (1-10)"
noise = gets.chomp

p "What is the hamster's fur color?"
color = gets.chomp

p "Is the hamster a good candidate for adoption (y/n)"
candidate = gets.chomp

p "What is the estimated age of the hamster?"
age = gets.chomp

if age.empty?
  age = nil
else
  age = age.to_i
end

p "Thank you for your input, please confirm the following data:"
p "Hamster name: #{hamster_name}"
p "Noise level: #{noise}"
p "Fur color: #{color}"
p "Adoption candidate: #{candidate}"
p "Estimated age: #{age}"

p "Is this information correct (y/n)?"
correct = gets.chomp

end

if correct == "y"
  p "Thanks, have a great day!"
end

