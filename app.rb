require_relative 'config/environment'
require 'pry'
class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    user_input = params["user_phrase"]
    phrase = PigLatinizer.new
    pig_phrase = phrase.piglatinize(user_input)
    "#{pig_phrase}"
  end
end
