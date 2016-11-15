require "sinatra"
require_relative "random_ai.rb"
require_relative "sequential_ai.rb"
require_relative "unbeatable.rb"
require_relative "board.rb"

enable :sessions

ai = ""

board = Board.new()

get '/' do
  erb :home
end

post '/home' do
  name = params[:input_name]
end


get '/rules' do
  erb :rules
end

get '/history' do
  erb :history
end

get '/play_game' do
  erb :play_game, :locals => {:board => session[:board]}
end
