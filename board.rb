class Board

        attr_accessor :gameboard
        def initialize
            # @empty_square = ""
            @gameboard = Array.new(9, "")
        end
    
    def update(position, symbol) #this updates the space on the board.
            # @board[position] == @empty_square
            @gameboard[position.to_i] = symbol
    end

    def valid_space?(position)
        if @gameboard[position.to_i] == "x" || @gameboard[position.to_i] == "o"
            false
        else
            true
        end
    end

    def valid_input?(position)
        if position.to_i >= 0 && position.to_i <= 8 && position =~ (/\d/)
            true
        else
            false
        end
    end    

    def full_board
        gameboard.count("") == 0       
    end
end