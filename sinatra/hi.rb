require 'sinatra'
require 'sinatra/reloader'
$number = rand(101)
$message = 'Try to guess'
   get '/hi' do
     erb :index, :locals => {:number => $number, :message => $message}
     if params['guess'] != nil
       check(params['guess'])
     end
     erb :index, :locals => {:number => $number, :message => $message}
   end

def check(guess)
  guessednumber = Integer(guess)
  if (guessednumber > $number)
     return $message = 'Too high'
  elsif (guessednumber < $number)
     return $message = 'Too low'
   elsif (guessednumber == $number)
     return $message = "GG"
   end
end
