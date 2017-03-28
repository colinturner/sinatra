require 'sinatra'

get '/' do
  "Hello World"
end

get '/secret' do
  "I appreciate sushi"
end

get '/pizza' do
  "Dogs"
end

get '/cat' do
  @random_name = %w(Amigo Oscar Viking).sample
  erb(:index)
end

set :session_secret, 'super secret'
