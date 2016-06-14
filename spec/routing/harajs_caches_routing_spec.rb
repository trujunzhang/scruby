require "spec_helper"

describe HarajsCachesController do
  describe "routing" do

    it "routes to #index" do
      get("/harajs_caches").should route_to("harajs_caches#index")
    end

    it "routes to #new" do
      get("/harajs_caches/new").should route_to("harajs_caches#new")
    end

    it "routes to #show" do
      get("/harajs_caches/1").should route_to("harajs_caches#show", :id => "1")
    end

    it "routes to #edit" do
      get("/harajs_caches/1/edit").should route_to("harajs_caches#edit", :id => "1")
    end

    it "routes to #create" do
      post("/harajs_caches").should route_to("harajs_caches#create")
    end

    it "routes to #update" do
      put("/harajs_caches/1").should route_to("harajs_caches#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/harajs_caches/1").should route_to("harajs_caches#destroy", :id => "1")
    end

  end
end
