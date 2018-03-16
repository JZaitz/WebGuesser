require 'sinatra'
require 'sinatra/reloader'

get '/web_guesser' do

number = rand(10) + 1
guess = params["guess"].to_i
message = "Testing message"

 def check_guess(guess, number)
   if guess.to_i > 10
     "Too high, (1-10) please."
   elsif guess.to_i <= 0
     "Too low, 1-10 please."
   elsif guess.to_i == number
     "You guessed the correct number!"
   else
     "Hmmmm. Guess again."
   end
 end

 message = check_guess(guess, number)

  erb :index, :locals => {:number => number, :message => message}





end
