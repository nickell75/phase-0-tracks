require_relative 'word_game'

describe Word_Game do
  let(:game) {Word_Game.new("word")}

  it "allows user to enter a word or phrase" do
    expect(game.word).to eq "word"
  end

  it "another user attempts to guess the word" do
    game.guess = "r"
    expect(game.guess).to eq "r"
  end

  #it "limited guesses equal to the length of the word" do
  #  expect(game.word.length).to eq game.guesses
  #end
  
  it "Repeated guesses don't count against player" do
    game.already_used << "r"
    game.guess = "r"
    expect(game.already_used.include?(game.guess)).to eq true
  end
  
  it "gives player feedback" do
    expect(game.blank).to eq ""
  end
  
  it "gives player final message - good or bad" do
    game.is_game_over != true || game.guesses == 0
    expect(game.message).to eq true 
  end
  it "gives player final message - good or bad" do
    game.is_game_over == true && game.guesses != 0
    expect(game.message).to eq true 
  end
end
=begin
  
One user can enter a word (or phrase, if you would like your game to support that), 
and another user attempts to guess the word.

Guesses are limited, and the number of guesses available is related to the length 
of the word.

*******Repeated guesses do not count against the user.********

The guessing player receives continual feedback on the current state of the word. 
So if the secret word is "unicorn", the user will start out seeing 
something like "_ _ _ _ _ _ _", which would become "_ _ _ c _ _ _" after the 
user enters a guess of "c".

The user should get a congratulatory message if they win, and a taunting message 
if they lose.
  
=end