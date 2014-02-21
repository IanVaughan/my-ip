require 'sinatra'
require 'json'

ip = 0

get '/' do
  content_type :json
  ip.to_json
end

post '/update' do
  ip = data['ip']
end

