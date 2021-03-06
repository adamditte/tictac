class Game #naming the class
    attr_reader :grid, :player_1, :player_2 #sets attributes for the class

    def initialize
        @grid = Board.new
        @player_1 = Player.new
        @player_2 = Player.new
        @current_turn = 1
    end

    def play_game #this runs all other functions that were created so far
        welcome
        player_names
        begin_game
    end

    def welcome
        puts "\n"
        puts "****************************************"
        puts "* Welcome to Adam's Tic-Tac-Toe Game *"
        puts "****************************************"
    end

    def player_names
        puts "Player 1 has entered the game!  Please enter your username" 
        @player_1.name = gets.chomp #collects user input of name and removed last element of string
        puts "Welcome #{@player_1}, you will be player X"
        puts "\n"
        @player_1.symbol = 'X' #sets player_1 symbol to X
        puts "Player 2 has entered the game!  Please enter your username" 
        @player_2.name = gets.chomp #collects user input of name and removed last element of string
        puts "Welcome #{@player_2}, you will be player O"
        puts "\n"
        @player_2.symbol = 'O' #sets player_1 symbol to O
        puts "\n"
    end

    def begin_game
        puts "#{@player_1.name}, it is your turn."
        @grid.print_grid #begins a new game!
        take_turns until game_over # calls take_turns function until the game is over and then calls game_over function
    end 

    def take_turns
        @current_turn.odd? ? turn(@player_1) : turn(@player_2) #current_turn starts set to 1. checks to see if odd then calls turn funtion and passes to proper player
    end

    def turn(player)
        show_turn(player)
        input = get_valid_square
        if @grid.update(input, player.symbol)
            @current_turn += 1 #sets current_turn equal to current_turn plus 1
            else 
                error = "SORRY, THAT IS AN INVALID MOVE"
        end
        @grid.print_grid
        check_for_win(player) #calls check_for_win function and passes current player
    end
    
    def show_turn(player)
        puts "#{player.name} ('#{player.symbol}')"
    end

    def get_valid_square
        input = nil
        until (0..8).include?(input)
            puts "It is time to make your move. The numbers 1-3 correspond to the top row, left to right respectively. Numbers 4-6 are the middle, and 7-9 make up the bottom row."
            input = gets.chomp.to_i - 1
        end
     input
    end

    def check_for_win(player)
        @@wins.each.do |w|
            @winner - player if w.all? { |a| @grid.board[a] == player.symbol }
    end


    def game_over
        @current_turn > 9 || @winner
    end

    def show_game_over
        puts '---------'
        puts 'Game Over'
        puts '---------'
    end
    def show_result
        if @current_turn > 9 && !@winner
            puts "IT'S A TIE!"
        else
            puts "CONGRATS, #{@winner.name}.  YOU WON!"
        end
    end

    class Board

        attr_reader :board, :empty_square

        def initialize
            @empty_square = "-" #if the square has not been played it is empty
            @board = Array.new(9, @empty_square) #makes an array of 9 " "'s
        end

        def print_grid #prints 3 rows in 3 columns with | between the columns
            puts "\n"
            @board.each_slice(3) {|row| puts row.join(' | ')}  #breaks @board into sections of 3 and puts a new line between each section
            puts "\n"
        end
        def update(position, symbol) #this updates the space on the board.
            if @board[position] == @empty_square
                @board[position] = symbol
                return true
            else
                return false
            end
        end
    end
    
    Player = Struct.new(:name, :symbol)
end

my_game = Game.new
Game.new.play_game

