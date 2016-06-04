require "spec_helper"

describe EtsiesController do
  describe "routing" do

    it "routes to #index" do
      get("/etsies").should route_to("etsies#index")
    end

    it "routes to #new" do
      get("/etsies/new").should route_to("etsies#new")
    end

    it "routes to #show" do
      get("/etsies/1").should route_to("etsies#show", :id => "1")
    end

    it "routes to #edit" do
      get("/etsies/1/edit").should route_to("etsies#edit", :id => "1")
    end

    it "routes to #create" do
      post("/etsies").should route_to("etsies#create")
    end

    it "routes to #update" do
      put("/etsies/1").should route_to("etsies#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/etsies/1").should route_to("etsies#destroy", :id => "1")
    end

  end
end
