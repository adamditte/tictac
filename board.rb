class Board

        attr_accessor :board
        def initialize
            # @empty_square = ""
            @board = Array.new(9, "")
        end
    
    def update(position, symbol) #this updates the space on the board.
            # @board[position] == @empty_square
            @board[position] = symbol
    end
end