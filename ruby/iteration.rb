# _______________________RELEASE ONE _______________________

dogs = ["Rio", "Rocky", "Fred", "Ares"]
dogs.each do |name|
    "#{name} is available for adoption"
end
 # p dogs 

dogs.map! do |name|
  name.next
end

 # p dogs


cars = {BMW: "X5", Ferrari: "LaFerrari", Lamborghini: "Huracan", Porsche: "GT3"}

cars.each do |make, model|
 # p "#{model} is the best #{make}!"
end

# _______________________REALEASE TWO_______________________

# numbers = [24, 7, 10, 45]
# numbers.delete_if &:even?
# p numbers


 numbers = [24, 7, 10, 45, 100, 3, 66]
 numbers.each do |number|
  if !number.even?
    # p number
  end
end

numbers.each do |number|
  if number < 20
    # p number
  end
end

numbers.each do 
  until numbers.length == 3
    numbers.delete_at(-1)
  end
end 

p numbers








# the_numbers = {1 => "A", 2 => "B", 3 => "C", 4 => "D"}

