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
#_____________________________BUSINESS Logic_________________________________________

class Word_Game
	attr_accessor :word, :guess, :count

	def initialize(word)
		@word = word
		@guess = guess
		@count = 0
		@word_array = []
		@guess_array = []
	end
	def check_word
		if @word != @guess
			puts "Not the correct word, Try Again: "

	end
	def guess
		puts "Your Word is: #{@word}"
	end
	def blank
		blank = "_"
	end
	def guess_count
		@count += 1
	end
	def final_message
		if 
	end
end

#_____________________________DRIVER Code_________________________________________
puts "Welcome to the Word Game"
puts "Please enter a word to start game: "
	word = gets.chomp.downcase
game = Word_Game.new(word)
	if count < word_array.length
		puts "You have @{guess_count} guesses remaining, try again: "
		
