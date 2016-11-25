require 'sinatra'
require_relative './lib/player.rb'
require_relative './lib/game.rb'

enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    player1 = Player.new(params[:player1_name])
    player2 = Player.new(params[:player2_name])
    session[:game] = Game.new(player1,player2)
    redirect '/play'
  end

  get '/play' do
    @game = session[:game]
    erb(:play)
  end

  post '/attack' do
    @game = session[:game]
    @game.attack(@game.players.last)
    erb(:attack)
  end
