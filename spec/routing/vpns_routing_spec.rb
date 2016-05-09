require "spec_helper"

describe VpnsController do
  describe "routing" do

    it "routes to #index" do
      get("/vpns").should route_to("vpns#index")
    end

    it "routes to #new" do
      get("/vpns/new").should route_to("vpns#new")
    end

    it "routes to #show" do
      get("/vpns/1").should route_to("vpns#show", :id => "1")
    end

    it "routes to #edit" do
      get("/vpns/1/edit").should route_to("vpns#edit", :id => "1")
    end

    it "routes to #create" do
      post("/vpns").should route_to("vpns#create")
    end

    it "routes to #update" do
      put("/vpns/1").should route_to("vpns#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/vpns/1").should route_to("vpns#destroy", :id => "1")
    end

  end
end
