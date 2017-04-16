require 'sinatra'
require 'sinatra/reloader'
$message = 'Write what you want to cipher, it will perform a caesar cipher with a shift of 5'
$ciphered
    get '/cipher' do
       erb :index, :locals => {:message => $message}
       if params['cipher'] != nil
         $ciphered = caesar_cipher(params['cipher'],5)
       end
       erb :index, :locals => {:ciphered => $ciphered, :message => $message}
    end

def caesar_cipher(string, shift)
  @newArray = []
  @h = Hash[
    "a" => 1,
    "b" => 2,
    "c" => 3,
    "d" => 4,
    "e" => 5,
    "f" => 6,
    "g" => 7,
    "h" => 8,
    "i" => 9,
    "j" => 10,
    "k" => 11,
    "l" => 12,
    "m" => 13,
    "n" => 14,
    "o" => 15,
    "p" => 16,
    "q" => 17,
    "r" => 18,
    "s" => 19,
    "t" => 20,
    "u" => 21,
    "v" => 22,
    "w" => 23,
    "x" => 24,
    "y" => 25,
    "z" => 26
  ]
  @array = string.split("")
  @array.each do |letter|
    @numberOld = @h[letter]
    puts "old number is #{@numberOld}"
    puts "old letter is #{@h.key(@numberOld)}"
    @numberNew = shift + @numberOld
    if @numberNew > 26
    	@newnewNumber =  @numberNew - 26
    	@newLetter = @h.key(@newnewNumber)
    else
    	@newLetter = @h.key(@numberNew)
    end
    puts "new number is #{@numberNew}"
    puts "new letter is #{@h.key(@numberNew)}"
    @newArray << @newLetter
  end
  @newArray.join('')
  end
