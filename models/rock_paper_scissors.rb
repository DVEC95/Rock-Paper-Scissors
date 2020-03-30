class RockPaperScissors

  def self.play(hand1, hand2)
    if hand1 == hand2
        return "It's a tie"
    else
      if hand1 == "rock" && hand2 == "scissors"
        return "Player 1 wins with rock!"
      elsif hand1 == "scissors" && hand2 == "paper"
        return "Player 1 wins with scissors!"
      elsif hand1 == "paper" && hand2 == "rock"
        return "Player 1 wins with paper!"
      elsif hand1 == "scissors" && hand2 == "rock"
        return "Player 2 wins with rock!"
      elsif hand1 == "paper" && hand2 == "scissors"
        return "Player 2 wins with scissors!"
      elsif hand1 == "rock" && hand2 == "paper"
        return "Player 2 wins with paper!"
      else return nil
      end
    end
  end

end
