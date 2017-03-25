
=begin
INSTRUCTIONS

  # One user can enter a word
  # another user attempts to guess the word.
  # Guesses are limited, and the number of guesses available is related to the length of the word. (need a guess counter that is set by the length of the word)
  # Repeated guesses do not count against the user.
  # The guessing player receives continual feedback on the current state of the word. (print out after each guess)
    So if the secret word is "unicorn", the user will start out seeing something like "_ _ _ _ _ _ _",
    which would become "_ _ _ c _ _ _" after the user enters a guess of "c".
  #The user should get a congratulatory message if they win, and a taunting message if they lose.
  


PSUEDOCODE

  Initialize method:
    - initialize game with player 1 input word
    - create "_ _ " output for player 2
    - determine number of guesses based on word length
    - print out guesses and interface for user

  Guess method:
    - update guess count
    - take player two guess and compare it to letters in player 1 word
    - if letter matches then should be printed out with positive matches
    - if no matches print negative message and guesses remaining


  Game over method:
    - if word guess correctly print positive message
    - if guesses = 0 print negative message and the answer

=end

# DECLARATIONS

class Game
  attr_accessor :word, :interface, :guesses, :right_answer

  def initialize(word)
    @word = word.downcase
    @interface = "_ " * word.length
    @working_interface = @interface.split
    @guesses = word.length * 2 
    

    puts "You have #{@guesses} attempts to guess this word: #{@interface}"
  end

  def guess 

    until @guesses == 0 || (@interface.delete(" ") == @word)
    puts "Enter your guess."
    user_guess = gets.chomp.downcase 

      if @word.include? user_guess
        puts "Nice guess! #{user_guess} is part of the word!"
        @guesses -=1

        @word.split('').each do |letter|
          if letter == user_guess
            indexer = word.split('').each_index.select { |i| word.split('')[i]==letter}
              indexer.each do |occurance|
                @working_interface.delete_at(occurance)
                @working_interface.insert(occurance, letter)
                @interface = @working_interface.join(' ')
              end
           end
        end
        puts @interface
        

      else
        @guesses -=1
        puts "WRONG!"
        puts "You have #{@guesses} guesses left!"
      end 
    end
  end

  def game_over
    if @interface.delete(" ") == @word
      puts "CONGRATULATIONS!!!! YOU WIN!!!"
    else
      puts "BOOOOOOOO!!! YOU RAN OUT OF GUESSES!!!"
      puts "The correct answer was '#{word}'"
    end
  end
end



# DRIVER CODE

puts ">>>Welcome to the word guessing game!<<<"  
puts "PLAYER 1: Please type your word."
player_word = gets.chomp 

puts "PLAYER 2: You have a limited number of guesses to figure out the word.  You may guess individual letters only."
game = Game.new(player_word)

game.guess
game.game_over
 



