require 'sinatra'
require 'json'

ip = 0

get '/' do
  content_type :json
  ip
end

get '/update' do
  ip = request.ip
end

