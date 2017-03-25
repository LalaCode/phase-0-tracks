=begin
  # One user can enter a word
  # another user attempts to guess the word.
  # Guesses are limited, and the number of guesses available is related to the length of the word. (need a guess counter that is set by the length of the word)
  # Repeated guesses do not count against the user.
  # The guessing player receives continual feedback on the current state of the word. (print out after each guess)
    So if the secret word is "unicorn", the user will start out seeing something like "_ _ _ _ _ _ _",
    which would become "_ _ _ c _ _ _" after the user enters a guess of "c".
  #The user should get a congratulatory message if they win, and a taunting message if they lose.
  

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
    - repeat until guess count = 0

  GAME OVER METHOD
  
=end
