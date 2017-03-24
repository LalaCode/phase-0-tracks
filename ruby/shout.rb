=begin
module Shout
def self.yell_angrily(words)
    words + "!!!" + " :("
  end

def self.yell_happily(words)
  words + "!!!" + " I'm so happy!"
end
end

puts Shout.yell_angrily("I'm so angry")
puts Shout.yell_happily("This is great")
=end

module Shout 
  def happy(audience)
    p "You #{audience} are wonderful. This is a great day."
  end

  def angry(audience,wish)
    p "You #{audience} are terrible - sit down! I wish I was #{wish}..."
  end
end

class Teacher
  include Shout
end

class Bus_driver
  include Shout
end

teacher = Teacher.new
teacher.happy("students")
teacher.angry("student", "at the beach")

driver = Bus_driver.new
driver.happy("riders")
driver.angry("riders", "a teacher")
