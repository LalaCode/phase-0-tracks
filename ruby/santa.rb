
class Santa

  attr_reader :age, :ethnicity, :reindeer_ranking
  attr_accessor :gender

  def initialize(name, gender, ethnicity, age)
    
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = age 
    puts "Initializing #{name} Santa instance ..."
    puts "#{name} is a #{age} year old #{ethnicity} #{gender} santa."
    puts "___________________________________________________________"
  end

  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie)
    puts "That was a good #{cookie} cookie!"
  end

  def celebrate_birthday(age)
    age +=1
  end

  def get_mad_at(reindeer_name)
    @reindeer_ranking.delete(reindeer_name)
    @reindeer_ranking[-1] = reindeer_name
  end


end


santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
example_names = ["Saanvi", "Aanya", "Pari", "Chhaya", "Jaya", "Rathi", "Akshita", "Damini", "Gayatri", "Nalini", "Manvi", "Vaishali", "Aarav", "Mohammed", "Vihaan", "Sai", "Arjun", "Dhruv", "Charan", "Chandan", "Veer", "Anand", "Anant", "Kedar"]
example_ages = (0..140).to_a
example_names.length.times do |i|
santas << Santa.new(example_names[i], example_genders.sample, example_ethnicities.sample, example_ages.sample)
end


=begin
tabi = Santa.new("female", "Vizsla")
p tabi.celebrate_birthday(23)
tabi.get_mad_at("Rudolph")

p tabi.reindeer_ranking
p tabi.gender=("undefined")
=end





