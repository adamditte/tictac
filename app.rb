 class Board
attr_accessor :board
  def initialize
    @board = Array.new(3) { Array.new(3, " ") }
  end

 def printInstructions
    puts "1 | 2 | 3",
         "---------",
         "4 | 5 | 6",
         "---------",
         "7 | 8 | 9"
    print "\n"
  end

 def printBoard()
    (0..2).each do |row|
      print "        "
      (0..2).each do |col|
        print @board[row][col]
        print " | " unless col == 2
      end
      print "\n"
      print "       -----------\n" unless row == 2
    end
    print "\n"
  end

end




board = Board.new
# puts "\n" * 100
board.printInstructions
board.printBoard