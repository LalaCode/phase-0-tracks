require "sqlite3"
require_relative "werkstatt_methods"


courses = ["Robotics", "Creative Coding", "App Development", "Minecraft Modding", "Game Development", "3D Game Design", "Digital Photography"]
db = create_workshops_students

#used this to set up dummy data
# dummy_student_data(db)
# dummy_workshop_data(db, courses)


puts "||WELCOME TO THE DIGITAL WERKSTATT|"
puts "Type in the desired command in caps"
puts "******************************************"
puts "OPTIONS:"
puts "View complete student enrollment: >VIEW<"
puts "View enrollment for specific class: >CLASS<"
puts "View account balances over $250: >ACCOUNTS<"
puts "Exit program: >EXIT<"

action = gets.chomp.upcase

case action 
when "VIEW"
  view_enrollment(db)
when "CLASS"
  view_class(db,courses)
when "ACCOUNTS"
  view_accounts(db)
when "EXIT"
  puts "Goodbye" 
else
  puts "That is not a valid option"
  puts "Choose: VIEW, CLASS, NAME, ACCOUNTS or EXIT"
  action = gets.chomp.upcase
end


# puts db.execute("select * from students")
# puts db.execute("select * from workshops")

