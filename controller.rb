require('sinatra')
require('sinatra/contrib/all') if development?

get '/rock/scissors' do
  return 'rock wins'
end

get 'scissors/rock' do
  return 'rock wins'
end

get 'rock/paper' do
  return 'paper wins'
end

get 'paper/rock' do
  return 'paper wins'
end

get 'paper/scissors' do
  return 'scissors win'
end

get 'scissors/paper' do
  return 'scissors win'
end
