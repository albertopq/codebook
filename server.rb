require 'sinatra'
require 'pp'
require 'base64'
require 'redis'

helpers do
 def redis
   @redis ||= Redis.connect
 end
end


get '/' do
  userid = session[:message]
  if userid
    erb :dashboard
  else
    erb :login
  end
end

post '/' do
  
end