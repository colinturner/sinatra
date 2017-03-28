require 'sinatra'

get '/' do
  "Hello World"
end

get '/secret' do
  "I appreciate sushi"
end

get '/cat' do
  "<div style='border: 8px dashed red'>
    <img src='http://bit.ly/1eze8aE'>
  </div>"
end

set :session_secret, 'super secret'
