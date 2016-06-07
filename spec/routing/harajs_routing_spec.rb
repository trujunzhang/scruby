require "spec_helper"

describe HarajsController do
  describe "routing" do

    it "routes to #index" do
      get("/harajs").should route_to("harajs#index")
    end

    it "routes to #new" do
      get("/harajs/new").should route_to("harajs#new")
    end

    it "routes to #show" do
      get("/harajs/1").should route_to("harajs#show", :id => "1")
    end

    it "routes to #edit" do
      get("/harajs/1/edit").should route_to("harajs#edit", :id => "1")
    end

    it "routes to #create" do
      post("/harajs").should route_to("harajs#create")
    end

    it "routes to #update" do
      put("/harajs/1").should route_to("harajs#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/harajs/1").should route_to("harajs#destroy", :id => "1")
    end

  end
end
