require 'sinatra'
require 'sinatra/reloader'

get '/web_guesser' do
  "Hello, World!"
  number = rand(100)
  erb :index, :locals => {:number => number}


end
