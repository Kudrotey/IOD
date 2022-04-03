require 'sinatra'
require 'erb'

get '/' do
    erb :home_page
end

get '/iod' do
    erb :iod
end