require "spec_helper"

describe DealsdirectcategoriesController do
  describe "routing" do

    it "routes to #index" do
      get("/dealsdirectcategories").should route_to("dealsdirectcategories#index")
    end

    it "routes to #new" do
      get("/dealsdirectcategories/new").should route_to("dealsdirectcategories#new")
    end

    it "routes to #show" do
      get("/dealsdirectcategories/1").should route_to("dealsdirectcategories#show", :id => "1")
    end

    it "routes to #edit" do
      get("/dealsdirectcategories/1/edit").should route_to("dealsdirectcategories#edit", :id => "1")
    end

    it "routes to #create" do
      post("/dealsdirectcategories").should route_to("dealsdirectcategories#create")
    end

    it "routes to #update" do
      put("/dealsdirectcategories/1").should route_to("dealsdirectcategories#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/dealsdirectcategories/1").should route_to("dealsdirectcategories#destroy", :id => "1")
    end

  end
end
