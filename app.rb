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

post '/named_cat' do
  p params
  @name = params[:name]
  @nickname = params[:nickname]
  @color = params[:color]
  erb(:index)
end

get '/name_form' do
  erb(:form)
end

get '/random_cat' do
  @name = %w(Amigo Oscar Viking).sample
  erb(:index)
end

set :session_secret, 'super secret'
