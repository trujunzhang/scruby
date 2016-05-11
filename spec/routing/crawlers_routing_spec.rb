require "spec_helper"

describe CrawlersController do
  describe "routing" do

    it "routes to #index" do
      get("/crawlers").should route_to("crawlers#index")
    end

    it "routes to #new" do
      get("/crawlers/new").should route_to("crawlers#new")
    end

    it "routes to #show" do
      get("/crawlers/1").should route_to("crawlers#show", :id => "1")
    end

    it "routes to #edit" do
      get("/crawlers/1/edit").should route_to("crawlers#edit", :id => "1")
    end

    it "routes to #create" do
      post("/crawlers").should route_to("crawlers#create")
    end

    it "routes to #update" do
      put("/crawlers/1").should route_to("crawlers#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/crawlers/1").should route_to("crawlers#destroy", :id => "1")
    end

  end
end
