require 'spec_helper'

describe TweetsController do

  let(:valid_attributes) { { "body" => "MyString" } }
  let(:valid_session) { {} }

  describe "GET index" do
    it "returns all the tweets" do
      Tweet.should_receive(:all)
      get :index, {:format => 'json'}, valid_session
    end
  end

  describe "GET show" do
    it "returns the Tweet found by params[:id]" do
      @tweet = double(Tweet, :to_json => '{}')
      Tweet.should_receive(:find).with('123').and_return(@tweet)
      get :show, {:format => 'json', :id => '123'}, valid_session
      response.body.should == '{}'
    end
  end

  describe "POST create" do
    it "creates a new Tweet" do
      expect {
        post :create, {:format => 'json', :tweet => valid_attributes}, valid_session
      }.to change(Tweet, :count).by(1)
    end
  end

  describe "PUT update" do
    it "updates the requested tweet" do
      tweet = Tweet.create! valid_attributes
      Tweet.any_instance.should_receive(:update).with({ "body" => "MyString" })
      put :update, {:format => 'json', :id => tweet.to_param, :tweet => { "body" => "MyString" }}, valid_session
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested tweet" do
      tweet = Tweet.create! valid_attributes
      expect {
        delete :destroy, {:format => 'json', :id => tweet.to_param}, valid_session
      }.to change(Tweet, :count).by(-1)
    end
  end

end
