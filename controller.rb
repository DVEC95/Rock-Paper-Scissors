require('sinatra')
require('sinatra/contrib/all') if development?

require_relative('./models/rock_paper_scissors.rb')
also_reload('./models/*')

get '/:hand1/:hand2' do
  hand1 = params['hand1']
  hand2 = params['hand2']
  @result = RockPaperScissors.play(hand1, hand2)
  erb(:result)
end

get '/' do
  erb(:home)
end
