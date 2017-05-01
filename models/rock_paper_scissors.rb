class RockPaperScissors

  def initialize(hand1, hand2)
    @hand1 = hand1
    @hand2 = hand2
  end

  def first_hand()
    return @hand1
  end

  def second_hand()
    return @hand2
  end

  def winning_hand(hand1, hand2)
    outcome = ""
    if ( @hand1 == "rock" && @hand2 == "paper" )
      outcome = @hand2
    elsif ( @hand1 == "rock" && @hand2 == "scissors" )
      outcome = @hand1
    elsif ( @hand1 == "scissors" && @hand2 == "paper" )
      outcome = @hand1
    elsif ( @hand1 == "scissors" && @hand2 == "rock" )
      outcome = @hand2
    elsif ( @hand1 == "paper" && @hand2 == "rock" )
      outcome = @hand1
    elsif ( @hand1 == "paper" && @hand2 == "scissors" )
      outcome = @hand2
    end
    return outcome
  end

end