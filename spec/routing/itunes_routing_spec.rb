require "spec_helper"

describe ItunesController do
  describe "routing" do

    it "routes to #index" do
      get("/itunes").should route_to("itunes#index")
    end

    it "routes to #new" do
      get("/itunes/new").should route_to("itunes#new")
    end

    it "routes to #show" do
      get("/itunes/1").should route_to("itunes#show", :id => "1")
    end

    it "routes to #edit" do
      get("/itunes/1/edit").should route_to("itunes#edit", :id => "1")
    end

    it "routes to #create" do
      post("/itunes").should route_to("itunes#create")
    end

    it "routes to #update" do
      put("/itunes/1").should route_to("itunes#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/itunes/1").should route_to("itunes#destroy", :id => "1")
    end

  end
end
