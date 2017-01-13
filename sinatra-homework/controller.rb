require('sinatra')
require('sinatra/contrib/all')
require('pry')
require_relative('./models/rps')

require('json')

get '/'  do
  erb(:home)
end

get '/about'  do
  erb(:about)
end

get'/play' do
   erb(:play)
 end

get '/html' do
  send_file('./index.html')
end

get '/winner/:player1/:player2' do
 game =  Rps.new(params[:player1], params[:player2].to_i)
 @result = game.winner()
 erb(:result)
end

get '/game/:player1/:player2' do
  content_type( :json )
  game = Rps.new(params[:player1].to_i, params[:player2].to_i)

  results = {
    winner: game.winner
  }
  return results.to_json()
end

