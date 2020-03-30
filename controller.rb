require('sinatra')
require('sinatra/contrib/all') if development?

require_relative('./models/rock_paper_scissors.rb')
also_reload('./models/*')

get '/:hand1/:hand2' do
  hand1 = params['hand1']
  hand2 = params['hand2']
  return RockPaperScissors.play(hand1, hand2)
end
