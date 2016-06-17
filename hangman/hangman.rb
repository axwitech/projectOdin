require "yaml"
class Game
  def initialize
    $lines = File.readlines "5desk.txt"
    $lives = 5
    $words = []
    $guessed = []
    $randomWord = ""
    $temp = ""
    $randomWordArray = []
    $lines.each do |line|
      $words << line
    end
  end

  def selectWord()
    random = Random.new
    $randomNum = random.rand(61405)
    $randomWord =$words[$randomNum]
    split($randomWord)
  end

  def check(guess)
    if $randomWordArray.include? guess
      puts "Yep"
      index = $randomWordArray.index(guess)
      $temp[index] = guess
      $guessed << guess
      puts $temp + "You've guessed #{$guessed}"
    else
      puts "Nah"
      $guessed << guess
      puts $temp + "You've guessed #{$guessed}"
      $lives -= 1
    end
  end

  def split(randomWord)
    $randomWordArray = randomWord.split("")
    times = $randomWordArray.count - 2
    times.times do
      $temp << "_ "
    end
  end

  def save(randomWordArray, temp, guessed, lives)
    yaml = YAML::dump(randomWordArray, temp, guessed, lives)
    game_file = GameFile.new("/saved.yaml")
    game_file.write(yaml)
  end

  def load
  end
end
