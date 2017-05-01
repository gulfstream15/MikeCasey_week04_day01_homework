require ('sinatra')
require ('sinatra/contrib/all')
require ('pry-byebug')
require_relative('models/rock_paper_scissors')

get '/' do
  erb(:home)
end

get '/game_rules' do
  erb(:game_rules)
end

get '/winning_hand/:hand1/:hand2' do
  hand1 = params[:hand1]
  hand2 = params[:hand2]
  winner = RockPaperScissors.new(hand1, hand2)
  @winner = winner.winning_hand(hand1, hand2)
  erb(:result)
end