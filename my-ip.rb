require 'sinatra'
require 'json'

config = {}

get '/' do
  "Hi"
end

get %r{/([a-zA-Z]{6}/update)} do |c|
  key = c.split('/').first
  config[key] = request.ip
end

get %r{/([a-zA-Z]{6}/redirect)} do |c|
  key = c.split('/').first
  redirect config[key]
end

get %r{/([a-zA-Z]{6})} do |c|
  content_type :json
  key = c.split('/').first
  config[key]
end

