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
    end
end