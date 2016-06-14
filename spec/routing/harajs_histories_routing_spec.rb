require "spec_helper"

describe HarajsHistoriesController do
  describe "routing" do

    it "routes to #index" do
      get("/harajs_histories").should route_to("harajs_histories#index")
    end

    it "routes to #new" do
      get("/harajs_histories/new").should route_to("harajs_histories#new")
    end

    it "routes to #show" do
      get("/harajs_histories/1").should route_to("harajs_histories#show", :id => "1")
    end

    it "routes to #edit" do
      get("/harajs_histories/1/edit").should route_to("harajs_histories#edit", :id => "1")
    end

    it "routes to #create" do
      post("/harajs_histories").should route_to("harajs_histories#create")
    end

    it "routes to #update" do
      put("/harajs_histories/1").should route_to("harajs_histories#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/harajs_histories/1").should route_to("harajs_histories#destroy", :id => "1")
    end

  end
end
