require "spec_helper"

describe SocialmediaController do
  describe "routing" do

    it "routes to #index" do
      get("/socialmedia").should route_to("socialmedia#index")
    end

    it "routes to #new" do
      get("/socialmedia/new").should route_to("socialmedia#new")
    end

    it "routes to #show" do
      get("/socialmedia/1").should route_to("socialmedia#show", :id => "1")
    end

    it "routes to #edit" do
      get("/socialmedia/1/edit").should route_to("socialmedia#edit", :id => "1")
    end

    it "routes to #create" do
      post("/socialmedia").should route_to("socialmedia#create")
    end

    it "routes to #update" do
      put("/socialmedia/1").should route_to("socialmedia#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/socialmedia/1").should route_to("socialmedia#destroy", :id => "1")
    end

  end
end
