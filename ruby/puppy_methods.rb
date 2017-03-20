=begin
  
class Puppy

  def initialize
    puts "Initializing new puppy instance..."
  end
  
  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

def speak(integer)
   integer.times do 
    puts "woof "
  end
 end

 def roll_over
  puts "rolls over"
end

def dog_years(human_years)
  puts human_years * 7
end

def sleep
  puts "ZZZzzz"
end
end


rio = Puppy.new
rio.fetch("ball")
rio.speak(2)
rio.roll_over
rio.dog_years(2)
rio.sleep

=end

class Cleaning_Robot

  def initialize
    puts "Initializing new Cleaning Robot instance..."
  end

  def cleaning_time(rooms)
    time = (45.0 * rooms) /60 
    puts "It will take approximately #{time} hours to clean."
  end

  def floors(rooms)
    rooms.times do 
      puts "sweep sweep sweep mop mop mop"
    end
  end

end

=begin
  
zelda = Cleaning_Robot.new
zelda.cleaning_time(5)
zelda.floors(2)

=end

number = 0
robots = []
zelda_model = ""
model_number = 0

until number == 51
  zelda_model = "Zelda #{model_number}"
  robots.push(zelda_model)

  model_number +=1
  number +=1
end

puts robots 