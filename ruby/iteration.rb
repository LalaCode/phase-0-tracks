dogs = ["Rio", "Rocky", "Fred", "Ares"]
dogs.each do |name|
    "#{name} is available for adoption"
end
 dogs 

dogs.map! do |name|
  name.next
end

 dogs


cars = {BMW: "X5", Ferrari: "LaFerrari", Lamborghini: "Huracan", Porsche: "GT3"}

cars.each do |make, model|
  p "#{model} is the best #{make}!"
end

cars

