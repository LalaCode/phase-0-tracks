class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

def speak(integer)
   integer.times do 
    print "woof "
  end
 end
end


rio = Puppy.new
rio.fetch("ball")
rio.speak(2)
