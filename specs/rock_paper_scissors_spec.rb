require 'minitest/autorun'
require_relative '../models/rock_paper_scissors'

class TestRockPaperScissors < Minitest::Test

  def setup
    @rock_paper_scissors = RockPaperScissors.new( "paper", "rock" )
  end

  def test_first_hand()
    outcome = @rock_paper_scissors.first_hand()
    assert_equal("paper", outcome) 
  end

  def test_second_hand()
    outcome = @rock_paper_scissors.second_hand()
    assert_equal("rock", outcome) 
  end

  def test_winning_hand()
    outcome = @rock_paper_scissors.winning_hand("paper", "rock")
    assert_equal("paper", outcome)
  end

  def test_winning_hand()
    outcome = @rock_paper_scissors.winning_hand("rock", "scissors")
    assert_equal("rock", outcome)
  end

  def test_winning_hand()
    outcome = @rock_paper_scissors.winning_hand("scissors", "paper")
    assert_equal("scissors", outcome)
  end

  def test_winning_hand()
    outcome = @rock_paper_scissors.winning_hand("scissors", "rock")
    assert_equal("rock", outcome)
  end

  def test_winning_hand()
    outcome = @rock_paper_scissors.winning_hand("paper", "scissors")
    assert_equal("scissors", outcome)
  end

  def test_winning_hand()
    outcome = @rock_paper_scissors.winning_hand("paper", "rock")
    assert_equal("paper", outcome)
  end

  def test_winning_hand()
    outcome = @rock_paper_scissors.winning_hand("paper", "paper")
    assert_equal("Its a draw, try again...", outcome)
  end

  def test_winning_hand()
      outcome = @rock_paper_scissors.winning_hand("rock", "rock")
      assert_equal("Its a draw, try again...", outcome)
    end

  def test_winning_hand()
      outcome = @rock_paper_scissors.winning_hand("scissors", "scissors")
      assert_equal("Its a draw, try again...", outcome)
  end

end