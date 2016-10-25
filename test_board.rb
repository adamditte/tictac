require "minitest/autorun"
require_relative "board.rb"

class TestBoard < Minitest::Test

    def test_new_board
        board = Board.new()
        assert_equal(["","","","","","","","",""], board.gameboard)
    end

    def test_for_update
        board = Board.new()
       board.update(0, "x")
       assert_equal(["x","","","","","","","",""], board.gameboard)
    end

    def test_for_update_o
        board = Board.new()
        board.update(0,"x")
        board.update(1,"o")
        assert_equal(["x","o","","","","","","",""], board.gameboard)
    end
end

