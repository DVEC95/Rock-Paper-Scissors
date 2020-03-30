class RockPaperScissors

  def self.play(hand1, hand2)
    if hand1 == hand2
        return "It's a tie"
    else
      if hand1 == "rock" && hand2 == "paper"
          return "paper wins"
        elsif hand1 == "rock" && hand2 == "scissors"
          return "rock wins"
        elsif hand1 == "paper" && hand2 == "rock"
          return "paper wins"
        elsif hand1 == "paper" && hand2 == "scissors"
          return "scissors win"
        elsif hand1 == "scissors" && hand2 == "rock"
          return "rock wins"
        elsif hand1 == "scissors" && hand2 == "paper"
          return "scissors win"
        else return nil
      end
    end
  end

end
