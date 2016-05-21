require "spec_helper"

describe AliexpressesController do
  describe "routing" do

    it "routes to #index" do
      get("/aliexpresses").should route_to("aliexpresses#index")
    end

    it "routes to #new" do
      get("/aliexpresses/new").should route_to("aliexpresses#new")
    end

    it "routes to #show" do
      get("/aliexpresses/1").should route_to("aliexpresses#show", :id => "1")
    end

    it "routes to #edit" do
      get("/aliexpresses/1/edit").should route_to("aliexpresses#edit", :id => "1")
    end

    it "routes to #create" do
      post("/aliexpresses").should route_to("aliexpresses#create")
    end

    it "routes to #update" do
      put("/aliexpresses/1").should route_to("aliexpresses#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/aliexpresses/1").should route_to("aliexpresses#destroy", :id => "1")
    end

  end
end
