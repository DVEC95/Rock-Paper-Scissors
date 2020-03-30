require ('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative ('../models/rock_paper_scissors.rb')

class TestRockPaperScissors < Minitest::Test

  def test_tie
    assert_equal("It's a tie", RockPaperScissors.play('rock', 'rock'))
    assert_equal("It's a tie", RockPaperScissors.play('paper', 'paper'))
    assert_equal("It's a tie", RockPaperScissors.play('scissors', 'scissors'))
  end

  def test_rock_scissors
    assert_equal('rock wins', RockPaperScissors.play('rock', 'scissors'))
    assert_equal('rock wins', RockPaperScissors.play('scissors', 'rock'))
  end

  def test_paper_rock
    assert_equal('paper wins', RockPaperScissors.play('paper', 'rock'))
    assert_equal('paper wins', RockPaperScissors.play('rock', 'paper'))
  end

  def test_scissors_paper
    assert_equal('scissors win', RockPaperScissors.play('scissors', 'paper'))
    assert_equal('scissors win', RockPaperScissors.play('paper', 'scissors'))
  end

  def test_nil
    assert_nil(RockPaperScissors.play('robot', 'alien'))
  end
  
end
