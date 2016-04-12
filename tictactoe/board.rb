class Board
  def init
    #@row1 = [[0,0,"0"],[0,1,"0"],[0,2,"0"]]
    #@row2 = [[1,0,"0"],[1,1,"0"],[1,2,"0"]]
    #@row3 = [[2,0,"0"],[2,1,"0"],[2,2,"0"]]


    #@row1 = [" "," "," "]
    #@row2 = [" "," "," "]
    #@row3 = [" "," "," "]
    #@board = [@row1, @row2, @row3]
    @board = Array.new(9, 1)
    #@winboard = [[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8]]
  end



  def change(x,y)
    @board[x] = y
  end

  def test(x,y)

  end

  def check
    if @board[0] == @board[1] && @board[0] == @board[2] && @board[0] == "x"
      puts "winner horizontal"
    elsif @board[3] == @board[4] && @board[3] == @board[5] && @board[3] == "x"
      puts "winner horizontal"
    elsif @board[6] == @board[7] && @board[6] == @board[8] && @board[6] == "x"
      puts "winner horizontal"
    elsif @board[0] == @board[3] && @board[0] == @board[6] && @board[0] == "x"
      puts "winner vertical"
    elsif @board[1] == @board[4] && @board[1] == @board[7] && @board[1] == "x"
      puts "winner vertical"
    elsif @board[2] == @board[5] && @board[2] == @board[8] && @board[2] == "x"
      puts "winner vertical"
    elsif @board[0] == @board[4] && @board[0] == @board[8] && @board[0] == "x"
      puts "winner diagonal"
    elsif @board[8] == @board[4] && @board[8] == @board[0] && @board[8] == "x"
      puts "winner diagonal"
    end

  end

  def printboard
    puts "-------------------"
    puts "| #{@board[0..2]} |\n"

    puts "| #{@board[3..5]} |\n"

    puts "| #{@board[6..8]} |\n"
    puts "-------------------"
  end
end
