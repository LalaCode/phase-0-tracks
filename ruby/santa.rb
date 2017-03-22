
class Santa

  attr_reader :age, :ethnicity, :reindeer_ranking
  attr_accessor :gender

  def initialize(gender, ethnicity)
    puts "Initializing Santa instance ..."
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0

    puts "This santa is a #{ethnicity} #{gender} santa."
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

=begin
santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
example_genders.length.times do |i|
  santas << Santa.new(example_genders[i], example_ethnicities[i])
end
=end

tabi = Santa.new("female", "Vizsla")
p tabi.celebrate_birthday(23)
tabi.get_mad_at("Rudolph")

p tabi.reindeer_ranking
p tabi.gender=("undefined")


