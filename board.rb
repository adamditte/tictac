class Board

        attr_accessor :gameboard
        def initialize
            # @empty_square = ""
            @gameboard = Array.new(9, "")
        end
    
    def update(position, symbol) #this updates the space on the board.
            # @board[position] == @empty_square
            @gameboard[position] = symbol
    end
end