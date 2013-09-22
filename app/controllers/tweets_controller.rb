class TweetsController < ApplicationController
  before_action :set_tweet, only: [:show, :update, :destroy]

  respond_to :json

  def index
    respond_with Tweet.all
  end

  def show
    respond_with @tweet
  end

  def create
    respond_with Tweet.create(tweet_params)
  end

  def update
    respond_with @tweet.update(tweet_params)
  end

  def destroy
    respond_with @tweet.destroy
  end

  private

  def set_tweet
    @tweet = Tweet.find(params[:id])
  end

  def tweet_params
    params.require(:tweet).permit(:body)
  end
end
