#Foundation of your ruby code, the backend, what we create here is gonna get passed to the views
#Using this class you can create new instances of tweets
class Tweet
  
  ALL_TWEETS = []
  attr_accessor :username, :content
  #we make it a @@variable so that it tracks all tweets, not only a tweet of a certain instance
  def initialize(username, content)
    @username = username
    @content = content
    #keeps track of all tweets
    #or do @@all_tweets << self
    #self is the tweet that just got created
    ALL_TWEETS.push(self)
  end
  #Tweet.all prints all tweets
  #here self is talking about the class: call this method on the class itself, not the tweet(instance)
  def self.all
    ALL_TWEETS
  end
end