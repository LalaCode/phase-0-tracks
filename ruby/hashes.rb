#Initialize hash
client_data = {
  name: nil,
  age: nil,
  children: nil,
  decor_theme: nil,
  city: nil,
  pets: nil,
  years_at_residence: nil

}
#Ask user for data & Convert input to appropriate data type
puts "Greetings, I will not prompt you for client details."
puts "What is the client's name?"
client_data[:name] = gets.chomp

puts "What is the client's age?"
client_data[:age] = gets.chomp.to_i

puts "How many children does the client have?"
client_data[:children] = gets.chomp.to_i

puts "What is the client's decor theme?"
client_data[:decor_theme] = gets.chomp

puts "What city does the client live in?"
client_data[:city] = gets.chomp

puts "Does the user have pets (yes/no)?"
pet_exist = gets.chomp
  if pet_exist == "yes"
    client_data[:pets] = true
  else
    client_data[:pets] = false
  end

puts "How many years has the client been at current residence?"
client_data[:years_at_residence] = gets.chomp.to_i



#Print hash for user
puts "Here is the data I collected:"
puts "Name: #{client_data[:name]}"
puts "Age: #{client_data[:age]}"
puts "Children: #{client_data[:children]}"
puts "Decor Theme: #{client_data[:decor_theme]}"
puts "City: #{client_data[:city]}"
puts "Pets: #{pet_exist}"
puts "Years at Residence: #{client_data[:years_at_residence]}"

#Ask user for updates until no further correction needed. 
correct = nil
until correct == "yes" 
puts "Is all of the data correct? (yes/no)"
correct = gets.chomp

  if correct == "yes"
    puts "Here is the data I collected:"
      puts "Name: #{client_data[:name]}"
      puts "Age: #{client_data[:age]}"
      puts "Children: #{client_data[:children]}"
      puts "Decor Theme: #{client_data[:decor_theme]}"
      puts "City: #{client_data[:city]}"
      puts "Pets: #{pet_exist}"
      puts "Years at Residence: #{client_data[:years_at_residence]}"
    puts "Thank you, data saved."
    puts "Goodbye"
  else 
    puts "What data needs to be updated?"
    update = gets.chomp.to_sym

    puts "Please type the updated data."
    data = gets.chomp

    client_data[update] = data
  end
end
