require 'faker'
require 'sqlite3'


def create_workshops_students
db = SQLite3::Database.new("workshop_info.db")

create_workshop_table = <<-SQL
  CREATE TABLE IF NOT EXISTS workshops(
  id INTEGER PRIMARY KEY,
  name VARCHAR(255), 
  days VARCHAR(255)
  )
SQL

create_student_table = <<-SQL
  CREATE TABLE IF NOT EXISTS students(
  id INTEGER PRIMARY KEY,
  name VARCHAR(255), 
  email VARCHAR(255),
  account_balance INT,
  workshop_id INT,
  FOREIGN KEY (workshop_id) REFERENCES workshops(id)
  )
SQL

db.execute(create_workshop_table)
db.execute(create_student_table)
db
end

def dummy_student_data(db)
     10.times do 
      db.execute( "INSERT INTO students (name, email, account_balance, workshop_id) VALUES (?, ?, ?, ?)", [Faker::Name.name, Faker::Internet.email, rand(0..550), rand(0..7)])
    end 
    
end

def dummy_workshop_data(db, courses)
    workshops = courses.each do |x, y|
      db.execute("INSERT INTO workshops (name, days) VALUES ('#{x}', '#{y}')")
    end
    workshops
end


def view_enrollment(db)
  enrollment = db.execute("SELECT students.name, students.email, students.account_balance, workshops.name FROM students JOIN workshops ON students.workshop_id = workshops.id")
  puts " "
  puts "****DIGITAL WERKSTATT ENROLLMENT DATA****"
  puts " "

  enrollment.each do |student_profile|
    
    puts "Name: #{student_profile[0]}"
    puts "Email: #{student_profile[1]}"
    puts "Workshop: #{student_profile[3]}"

    puts "Account Balance: $ #{student_profile[2]}"
    puts "****************************************"

  end
end

def view_class(db,courses)
  pulled_data = []
  puts "Type the workshop name you want data on."
  workshop_name = gets.chomp
  class_data = db.execute("SELECT students.name, students.account_balance, workshops.name FROM students JOIN workshops ON students.workshop_id = workshops.id")
  
  class_data.each do |student_profile|
   if student_profile[2] == "#{workshop_name}"
    pulled_data << student_profile
    end
  end

  workshop_name_big = workshop_name.upcase

  puts " "
  puts "****#{workshop_name_big} ENROLLMENT DATA****"
  puts " "

  pulled_data.each do |student_profile|
  puts "Name: #{student_profile[0]}"
  puts "Account Balance: $ #{student_profile[1]}"
  puts "****************************************"
  end

end


def view_accounts(db)
  outstanding_accounts = []
  account_data = db.execute("SELECT students.name, students.account_balance, workshops.name FROM students JOIN workshops ON students.workshop_id = workshops.id")
  
  account_data.each do |student_profile|
   if student_profile[1] > 250
    outstanding_accounts << student_profile
    end
  end

  puts " "
  puts "****OUTSTANDING ACCOUNTS DATA****"
  puts " "

  outstanding_accounts.each do |student_profile|
  puts "Name: #{student_profile[0]}"
  puts "Account Balance: $ #{student_profile[1]}"
  puts "****************************************"
  end
end



