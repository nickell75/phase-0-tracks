=begin
# Pseudocode a class for a word-guessing game that meets the following specifications. 

create a class word_game
  Method for player input
    user input - player enters a string(word or phrase)
  Method for guesses
    limited guesses based on the length of the string
      guessing the same thing twice doesnt count as a guess
  Method for Feedback
    feedback from program - output guessed letters that are correct -
          if the secret word is "unicorn", the user will start out 
          seeing something like "_ _ _ _ _ _ _", which would become
          "_ _ _ c _ _ _" after the user enters a guess of "c".
  Method for final output
    final message - congratulatory message if they win
            taunting message if they lose
  
Assume your driver code will handle input and output as far as the 
user is concerned. In other words, write a class designed for a 
computer program to use, not one designed for a human to use directly, 
then use driver code to bridge the gap between human and Ruby object.
=end
#_____________________________Computer Logic_________________________________________

class Word_Game
  attr_reader :word_array
  attr_accessor :word, :guess, :guess_count, :guesses, :already_used, :is_game_over, :blank

  def initialize(word)
    @word = word
    @guess = guess
    @is_game_over = false
    @guess_count = 0
    @word_array = []
    @already_used = []
    @blank = []
    @word_index = []
    @guesses
  end
  
  def check_word
    @blank = ("-" * @word.length).split('')
    if @word != @guess && @guesses !=  1
    # Input from Player
      @guesses = @word.length - @guess_count
      puts "You have #{@guesses} guesses remaining, \nGuess the word:"
      @guess = gets.chomp       

        @word_array = @word.split('')
        guess_array = @guess.split('')

    # Compare each letter
        guess_array.each do |letter| 
 
            if @word_array.include?(letter)
              @word_index = @blank
              match_letter = letter
              match_index = @word_array.index(letter)
              @word_index[match_index] = letter              
            end          
        end              
    else
      @is_game_over = true
    end
  end

  def blank
    puts "Not the correct word, Try Again: "
    @blank = @word_index.join('')     
    puts "Hint: " + @blank            
  end

  def check_duplicate

    if @already_used.include?(@guess)
      "You have already tried #{guess}!"
    else
      @guess_count += 1
      @already_used << @guess
    end
  end
  
  def message
    if @is_game_over == true || @guesses == 0
      puts "No more guesses left :(\nGAME OVER!!"
      @is_game_over = true
    elsif @is_game_over == true && @guesses != 0
      puts "You got it!!  Great Job!!\nGame Over!"
      #@is_game_over = true
    end
  end

end
#_____________________________DRIVER Code_________________________________________
puts "Enter a word to start playing:"
  word = gets.chomp
game = Word_Game.new(word)

while game.is_game_over != true
  game.blank 
  if game.is_game_over != true && game.guesses != 0
    game.check_word 
    game.check_duplicate
    
  end    
end
game.message
  