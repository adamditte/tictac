require "minitest/autorun"
require_relative "board.rb"

class TestBoard < Minitest::Test

    def test_new_board
        board = Board.new()
        assert_equal(["","","","","","","","",""], board.board)
    end

    def test_for_update
        board = Board.new()
       assert_equal(["x","","","","","","","",""], board.update(0, "x"))
    end

end

