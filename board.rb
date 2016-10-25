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

    def valid_space?(position)
        if @gameboard[position] == "x" || @gameboard[position] == "o"
            false
        else
            true
        end
    end

    def valid_input?(position)
        if position >= 0 && position <= 8
            true
        else
            false
        end
    end    


end