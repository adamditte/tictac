require "minitest/autorun"
require_relative "board.rb"

class TestBoard < Minitest::Test

    def test_new_board
        board = Board.new()
        assert_equal(["","","","","","","","",""], board.gameboard)
    end

    def test_for_update_board
        board = Board.new()
       board.update(0, "x")
       assert_equal(["x","","","","","","","",""], board.gameboard)
    end

    def test_for_update_board_turn_2
        board = Board.new()
        board.gameboard = ["x","","","","","","","",""]
        board.update(1,"o")
        assert_equal(["x","o","","","","","","",""], board.gameboard)
    end

    def test_for_occupied_space
        board = Board.new()
        board.gameboard = ["x","o","","","","","","",""]
        assert_equal(false, board.valid_space?(1))
        assert_equal(true, board.valid_space?(2))
    end
end

