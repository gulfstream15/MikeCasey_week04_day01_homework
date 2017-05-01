require 'minitest/autorun'
require_relative '../models/rock_paper_scissors'

class TestRockPaperScissors < Minitest::Test

  def setup
    @rock_paper_scissors = RockPaperScissors.new( "rock", "paper" )
  end

  def test_first_hand()
    result = @rock_paper_scissors.first_hand()
    assert_equal("rock", result) 
  end

  def test_second_hand()
    result = @rock_paper_scissors.second_hand()
    assert_equal("paper", result) 
  end

  def test_winning_hand()
    result = @rock_paper_scissors.winning_hand("paper", "rock")
    assert_equal("paper", result)
  end

  def test_winning_hand()
    result = @rock_paper_scissors.winning_hand("rock", "scissors")
    assert_equal("rock", result)
  end

  def test_winning_hand()
    result = @rock_paper_scissors.winning_hand("scissors", "paper")
    assert_equal("scissors", result)
  end

  def test_winning_hand()
    result = @rock_paper_scissors.winning_hand("scissors", "rock")
    assert_equal("rock", result)
  end

  def test_winning_hand()
    result = @rock_paper_scissors.winning_hand("paper", "scissors")
    assert_equal("scissors", result)
  end

  def test_winning_hand()
    result = @rock_paper_scissors.winning_hand("paper", "rock")
    assert_equal("paper", result)
  end

end