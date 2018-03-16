require 'sinatra'
require 'sinatra/reloader'

get '/web_guesser' do
  "Hello, World!"
  x = rand(100)
  "The secret number is #{x}."
end
