require "./board.rb"

test = Board.new
test.init
test.printboard
test.change(0,0,"x")
test.change(0,1,"x")
test.change(0,2,"x")
test.check()
#test.test(0,0)
test.printboard