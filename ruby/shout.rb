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