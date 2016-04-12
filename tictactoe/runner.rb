require "./board.rb"

test = Board.new
test.init
test.printboard
test.change(0,"x")
test.change(1,"x")
test.change(2,"x")
test.check
test.printboard
test.init
test.change(0, "x")
test.change(4, "x")
test.change(8, "x")
test.check
test.init
test.change(1, "x")
test.change(4, "x")
test.change(7, "x")
test.check

