require_relative "console_game.rb"

game = Game.new(Human.new("x"), Human.new("o"))

game.print_board

move = game.get_move

game.make_move(move)

game.print_board
