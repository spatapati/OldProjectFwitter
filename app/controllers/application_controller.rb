#Decides what goes where
#Sets up the routes, gets the instances of tweets and loads it up
require_relative "../../config/environment"
class ApplicationController < Sinatra::Base
  #Saying where to get/load the views
  set :views, "app/views"
        
  get "/" do
    @tweets = []
    @tweet1 = Tweet.new("Person1", "What is twitter")
    @tweet2 = Tweet.new("Person2", "I have no clue")
    @tweet3 = Tweet.new("Person1", "I don't know how to Internet")
    
    #make 3 new tweets, save to one instance variable as an array
    #pass that instance variable into the view using erb
    erb :tweets
  end
  post '/results' do
    #the form returns a hash called params, and in the form we gave the name of the input as username/tweet so that is how we are referencing them to generate a new tweet
    @tweet = Tweet.new(params[:username], params[:tweet], params[:username])
    #params
    erb :results
  end
  
  
end

