class Board
  def init
    #@row1 = [[0,0,"0"],[0,1,"0"],[0,2,"0"]]
    #@row2 = [[1,0,"0"],[1,1,"0"],[1,2,"0"]]
    #@row3 = [[2,0,"0"],[2,1,"0"],[2,2,"0"]]
    @row1 = [" "," "," "]
    @row2 = [" "," "," "]
    @row3 = [" "," "," "]
    @board = [@row1, @row2, @row3]


    

  def change(x,y,z)
  	@board[x][y] = z
  end

  def test(x,y)
  	puts @board[x][y]
  end

  def check

  end

  def printboard
  	puts "-------------------"
    puts "| #{@board[0]} |\n"

    puts "| #{@board[1]} |\n"

    puts "| #{@board[2]} |\n"
    puts "-------------------"
  end
end
