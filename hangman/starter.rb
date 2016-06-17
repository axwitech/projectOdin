require "./hangman"
game = Game.new
puts "Hangman launched"
puts "Welcome to Hangman!"
game.selectWord
puts "Your goal is to guess the word that is randomly selected from the dictionary"
puts "You can guess the wrong letter 5 times, or you lose"
puts "The word you are trying to guess a word that has #{$randomWord.length - 2} letters"

while($lives > 0)
  puts "You have #{$lives} lives left"
  puts "What is your guess?"
  guess = gets.chomp
  puts "You guessed #{guess}"
  if guess == "save"
    puts "Saved"
    game.save($randomWordArray, $temp, $guessed, $lives)
    break
  else
    game.check(guess)
  end
end
puts "You ran out of lives and lost the game"
