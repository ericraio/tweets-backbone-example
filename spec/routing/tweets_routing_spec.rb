require "spec_helper"

describe TweetsController do
  describe "routing" do

    it "routes to #index" do
      get("/api/tweets").should route_to("tweets#index")
    end

    it "routes to #new" do
      get("/api/tweets/new").should route_to("tweets#new")
    end

    it "routes to #show" do
      get("/api/tweets/1").should route_to("tweets#show", :id => "1")
    end

    it "routes to #create" do
      post("/api/tweets").should route_to("tweets#create")
    end

    it "routes to #update" do
      put("/api/tweets/1").should route_to("tweets#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/api/tweets/1").should route_to("tweets#destroy", :id => "1")
    end

  end
end
