class Board

        attr_reader :board, :empty_square
        def initialize
            @empty_square = ""
            @board = Array.new(9, @empty_square)
        end
end
    