require 'sinatra'
require 'erb'
require 'rack/flash/test'

get '/' do
    erb :home_page
end

get '/iod' do
    erb :iod
end

get '/canary-wharf' do
    erb :canary_wharf
end

get '/foot-tunnel' do
    erb :foot_tunnel
end

get '/billingsgate-market' do
    erb :billingsgate_market
end

get '/london-marathon' do
    erb :london_marathon
end

get '/mudchute-farm' do
    erb :mudchute_farm
end