require "rails_helper"

RSpec.describe CorgisController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/corgis").to route_to("corgis#index")
    end

    it "routes to #show" do
      expect(:get => "/corgis/1").to route_to("corgis#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/corgis").to route_to("corgis#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/corgis/1").to route_to("corgis#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/corgis/1").to route_to("corgis#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/corgis/1").to route_to("corgis#destroy", :id => "1")
    end
  end
end
