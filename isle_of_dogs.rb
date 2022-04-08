require 'sinatra'
require 'erb'

get '/' do
    erb :home_page
end

get '/iod' do
    erb :iod
end

get '/canary-wharf' do
    erb :canary_wharf
end