require "yaml"
class Game
  def initialize
    $lines = File.readlines "5desk.txt"
    $lives = 5
    $words = []
    $guessedwrong = []
    $guessedright = []
    $randomWord = ""
    $answer = ""
    $status = ""
    $randomWordArray = []
    $wordLength = 0
    $answerTemp = []
    $lines.each do |line|
      $words << line
    end
    $splittedAnswer = []
  end

  def selectWord()
    random = Random.new
    $randomNum = random.rand(61405)
    $randomWord =$words[$randomNum]
    $splittedAnswer = split($randomWord)
    puts $randomWord
  end

  def check(guess)
    print($answerTemp)
    if $answerTemp.include? guess
      $status = "Correct"
      updateCorrect(guess)
      updateAnswer(guess)
      $status
    else
      $status = "Wrong"
      updateWrong(guess)
      updateLives()
      $status
    end
    $status
  end

  def updateWrong(guess)
    $guessedwrong << guess
  end

  def updateCorrect(guess)
    $guessedright << guess
  end

  def updateAnswer(guess)
    $wordLength.times do |i|
      if guess == $answerTemp[i]
        $splittedAnswer[i] = $answerTemp[i]
      end
    end
  end

  def updateLives()
    puts $lives
    $lives -= 1
    if $lives == 0
      $lostgame = "You've lost the game, the correct answer is: #{$randomWord}"
    end
  end

  def split(randomWord)
    $answerTemp = randomWord.split("")
    $wordLength = $answerTemp.count-1
     $wordLength.times do
      #$temp << "_ "
      $splittedAnswer << "_ "
    end
    $splittedAnswer
  end

end
