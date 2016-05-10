require "spec_helper"

describe DealsdirectsController do
  describe "routing" do

    it "routes to #index" do
      get("/dealsdirects").should route_to("dealsdirects#index")
    end

    it "routes to #new" do
      get("/dealsdirects/new").should route_to("dealsdirects#new")
    end

    it "routes to #show" do
      get("/dealsdirects/1").should route_to("dealsdirects#show", :id => "1")
    end

    it "routes to #edit" do
      get("/dealsdirects/1/edit").should route_to("dealsdirects#edit", :id => "1")
    end

    it "routes to #create" do
      post("/dealsdirects").should route_to("dealsdirects#create")
    end

    it "routes to #update" do
      put("/dealsdirects/1").should route_to("dealsdirects#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/dealsdirects/1").should route_to("dealsdirects#destroy", :id => "1")
    end

  end
end
