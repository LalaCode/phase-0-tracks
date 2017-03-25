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
  
_____________________________________________________

DESIGN
  
  INITIALIZATION METHOD: 
    - take player input word and start new initialization of the game
    - create the "_ _" interface for the game using an array
    - determine the number of guesses based on word length

  GUESSING METHOD:
    - asks for user guess
    - compare user guess to player input word
    - if correct send message with updated interface and update guess count
    - if wrong send message and update guess count
    - repeat until guess count = 0 or word is complete

  GAME OVER METHOD:
    - if word was guessed correctly send congratulations message
    - if number of guesses is zero send negative message and give answer
  
=end

class Game
  attr_accessor :word, :interface, :guesses, :right_answer

  def initialize(word)
    @word = word
    @interface = "_ " * word.length
    @working_interface = @interface.split
    @guesses = word.length * 2 

    puts "You have #{@guesses} attempts to guess this word: #{@interface}"
  end

  def guess 

    until @guesses == 0 || (@interface.delete(" ") == @word)
    puts "Enter your guess."
    user_guess = gets.chomp 

    if @word.include? user_guess
      letter_placement = @word.index(user_guess)
      @working_interface.delete_at(letter_placement)
      @working_interface.insert(letter_placement, user_guess)
      @interface = @working_interface.join(' ')
      @guesses -=1
      puts "Nice guess! #{user_guess} is part of the word!"
      puts @interface
    else
      @guesses -=1
      puts "WRONG!"
      puts "You have #{@guesses} guesses left!"
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

end