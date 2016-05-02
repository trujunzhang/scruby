require "spec_helper"

describe GoogleplaysController do
  describe "routing" do

    it "routes to #index" do
      get("/googleplays").should route_to("googleplays#index")
    end

    it "routes to #new" do
      get("/googleplays/new").should route_to("googleplays#new")
    end

    it "routes to #show" do
      get("/googleplays/1").should route_to("googleplays#show", :id => "1")
    end

    it "routes to #edit" do
      get("/googleplays/1/edit").should route_to("googleplays#edit", :id => "1")
    end

    it "routes to #create" do
      post("/googleplays").should route_to("googleplays#create")
    end

    it "routes to #update" do
      put("/googleplays/1").should route_to("googleplays#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/googleplays/1").should route_to("googleplays#destroy", :id => "1")
    end

  end
end
