class RetweetsController < ApplicationController
  before_action :set_tweet

  def create
    @tweet.update(retweets_count: @tweet.retweets_count + 1)
    redirect_to @tweet
  end

  private 

  def set_tweet
    @tweet = Tweet.find(params[:tweet_id])
  end
end
