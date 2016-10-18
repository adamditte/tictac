 class Board
attr_accessor :board
  def initialize
    @board = Array.new(3) { Array.new(3, " ") }
  end


 def printBoard()
    (0..2).each do |row|
      print "       "
      (0..2).each do |col|
        print @board[row][col]
        print " | " unless col == 2
      end
end
end
end


game = Board.new
game.printBoard
