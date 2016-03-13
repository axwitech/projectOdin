def echo(echo)
  echo
end

def shout(shout)
	shout.upcase
end

def repeat(repeat, num= 2)
	([repeat] * num).join(" ")
end

def start_of_word(start, num)
	start[0...num]
end

def first_word(first)
	first.split(" ").first
end

def titleize(s)
	words = s.split.map do |word|
    if %w(the and over).include?(word)
      word
    else
      word.capitalize
    end
  end
  words.first.capitalize!
  words.join(" ")
end
