require "spec_helper"

describe DealsdirectnavbarsController do
  describe "routing" do

    it "routes to #index" do
      get("/dealsdirectnavbars").should route_to("dealsdirectnavbars#index")
    end

    it "routes to #new" do
      get("/dealsdirectnavbars/new").should route_to("dealsdirectnavbars#new")
    end

    it "routes to #show" do
      get("/dealsdirectnavbars/1").should route_to("dealsdirectnavbars#show", :id => "1")
    end

    it "routes to #edit" do
      get("/dealsdirectnavbars/1/edit").should route_to("dealsdirectnavbars#edit", :id => "1")
    end

    it "routes to #create" do
      post("/dealsdirectnavbars").should route_to("dealsdirectnavbars#create")
    end

    it "routes to #update" do
      put("/dealsdirectnavbars/1").should route_to("dealsdirectnavbars#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/dealsdirectnavbars/1").should route_to("dealsdirectnavbars#destroy", :id => "1")
    end

  end
end
