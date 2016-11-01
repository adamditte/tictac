require_relative "console_game.rb"

def select_player_2
    puts """

        What level of play would you like?

        Press   1 - Human
                2 - Random AI
                3 - Sequential AI

            Then ENTER!
            """
            who = {1 => Human, 2 => RandomAI, 3 => SequentialAI}
            choice = gets.chomp.to_i
            player = who[choice]
end
game = Game.new(Human.new("x"), Human.new("o"))

player_2 = select_player_2
game = Game.new(Human.new("x"), player_2.new("o"))

until game.game_over?

    game.change_player

    game.print_board

    move = game.get_move

    game.make_move(move)

    game.print_board

end

    game.end_message
