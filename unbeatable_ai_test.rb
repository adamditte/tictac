require "minitest/autorun"

require_relative "unbeatable_ai.rb"

class TestUnbeatableAi < Minitest::Test

    def test_random_ai_player
        player = UnbeatableAi.new("x")
        assert_equal("x", player.marker)
    end

    def test_for_valid_move
        player = UnbeatableAi.new("x")
        assert_equal(true, [0,1,2,3,4,5,6,7,8].include?(player.get_move(["","","","","","","","",""])))
    end

    def test_for_win_at_five
        player = UnbeatableAi.new("x")
        assert_equal(5, player.get_move(["","","","x","x","","","",""]))
    end

    def test_for_error_on_x_fourth_turn
        player = UnbeatableAi.new("o")
        assert_equal(5, player.get_move(["o","","x","x","x","o","o","","x"]))
    end   


end