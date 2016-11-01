require_relative "console_game.rb"



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
