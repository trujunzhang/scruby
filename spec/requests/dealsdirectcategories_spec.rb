require 'spec_helper'

describe "Dealsdirectcategories" do
  describe "GET /dealsdirectcategories" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get dealsdirectcategories_path
      response.status.should be(200)
    end
  end
end
