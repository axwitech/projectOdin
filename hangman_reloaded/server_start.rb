require 'sinatra'
require 'sinatra/reloader'
require "./hangman"
game = Game.new
game.selectWord
$welcomeMessage = "Your word is #{$randomWord.length - 1} characters long"
$livesMessage = "You have #{$lives} lives left"
$instructions = "Guess characters one by one"
$status = "Please guess"
$listofguessedright = "Here is the list of letters guessed wrong #{$guessedwrong}"
$listofguessedwrong = "Here is the list of letters guessed right #{$guessedright}"
$answer = ""
  get '/hangman' do

       erb :index, :locals => {:message => $welcomeMessage, :inst => $instructions}
       if params['guess'] != nil
         $status = "Your guess is #{game.check(params['guess'])}"
         $listofguessedwrong = "Here is the list of letters guessed wrong #{$guessedwrong}"
         $listofguessedright = "Here is the list of letters guessed right #{$guessedright}"
         $livesMessage = "You have #{$lives} lives left"
         $answer = $splittedAnswer
       end
       erb :index,
           :locals => {
           :message => $message,
           :status => $status,
           :listofguessedwrong => $listofguessedwrong,
           :listofguessedright => $listofguessedright,
           :lives => $livesMessage,
           :answer => $answer,
           :lost => $lostgame
           }
  end
