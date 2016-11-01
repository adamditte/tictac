require_relative "board.rb"
require_relative "console_human.rb"
require_relative "random_ai.rb"
require_relative "sequential_ai.rb"

class Game

    attr_accessor :board, :player_1, :player_2, :current_player

def initialize
    @board = Board.new
    @player_1 = Human.new("x")
    @player_2 = select_player_2
    @current_player = player_2
end
def select_player_2
    puts """

        What level of play would you like?

        Press   1 - Human
                2 - Random AI
                3 - Sequential AI

            Then ENTER!
            """
            who = {1 => Human, 2 => RandomAi, 3 => SequentialAi}
            choice = gets.chomp.to_i
            player = who[choice].new("o")
end
# player = select_player_2 
def change_player
    if @current_player == player_1
        @current_player = player_2
else
        @current_player = player_1
    end

end

def print_board
    puts ""
    puts "Let's get started!'"
    puts ""
    puts "Sample board with numbers:"
    puts ""
    puts " 1 | 2 | 3 "
    puts "---+---+---"
    puts " 4 | 5 | 6 "
    puts "---+---+---"
    puts " 7 | 8 | 9 "
    puts ""
    puts "Game Board:"
    puts ""
    puts " #{board.gameboard[0]} | #{board.gameboard[1]} | #{board.gameboard[2]} "
    puts "---+---+---"
    puts " #{board.gameboard[3]} | #{board.gameboard[4]} | #{board.gameboard[5]} "
    puts "---+---+---"
    puts " #{board.gameboard[6]} | #{board.gameboard[7]} | #{board.gameboard[8]} "
    puts ""

    
end

def get_move
    current_player.get_move(board.gameboard)
end

def make_move(move)
    board.update(move, current_player.marker)
    
end
def game_over?
    board.winner?(current_player.marker) || board.full_board?
end

def end_message
    if board.winner?(current_player.marker)
        puts "#{current_player.marker} wins. Big deal. Think you're special or something?"
    else
        board.full_board?
        puts "You tied. Kinda like kissing your sister."
    end
end
end