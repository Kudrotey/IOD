ENV['APP_ENV'] = 'test'

require './isle_of_dogs.rb'
require 'rspec'
require 'rack/test'

RSpec.describe 'The IsleOfDogs App' do
    include Rack::Test::Methods

    def app
        Sinatra::Application
    end

    context "Home Page" do
        it "a message saying 'Welcome to Isle of Dogs!'" do
            get '/'
            expect(last_response.body).to include('Welcome to Isle Of Dogs!')
        end
        it "contains a home link that is an anchor emoji" do
            get '/'
            expect(last_response.body).to include('&#9875;')
        end
        it "contains a section about IOD with a heading of 'What is IOD?'" do
            get '/'
            expect(last_response.body).to include('What is I.O.D?')
        end
        it "contains a section about Canary Wharf with a heading of 'Canary Wharf'" do
            get '/'
            expect(last_response.body).to include('Canary Wharf')
        end
        it "contains a section about Greenwich Foot Tunnel with a heading of 'Greenwich Foot Tunnel'" do
            get '/'
            expect(last_response.body).to include('Greenwich Foot Tunnel')
        end
        it "contains a section about Billingsgate Market with a heading of 'Billingsgate Market'" do
            get '/'
            expect(last_response.body).to include('Billingsgate Market')
        end
        it "contains a section about London Marathon with a heading of 'London Marathon'" do
            get '/'
            expect(last_response.body).to include('London Marathon')
        end
        it "contains a section about Mudchute Farm with a heading of 'Mudchute Farm'" do
            get '/'
            expect(last_response.body).to include('Mudchute Farm')
        end
    end

    context "IOD" do
        it "contains images and a title saying 'Isle Of Dogs'" do
            get '/iod'
            expect(last_response.body).to include('Isle Of Dogs')
        end
    end

    context "Canary Wharf" do
        it "contains images and a title saying 'Canary Wharf'" do
            get '/canary-wharf'
            expect(last_response.body).to include('Canary Wharf')
        end
    end

    context "Greenwich Foot Tunnel" do
        it "contains images and a title saying 'Greenwich Foot Tunnel'" do
            get '/foot-tunnel'
            expect(last_response.body).to include('Greenwich Foot Tunnel')
        end
    end
end