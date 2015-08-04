require "rails_helper"

RSpec.describe AppsController, type: :routing do
  xdescribe "routing" do
    login_user

    it "routes to #index" do
      expect(:get => "/apps").to route_to("apps#index")
    end

    it "routes to #new" do
      expect(:get => "/apps/new").to route_to("apps#new")
    end

    it "routes to #show" do
      expect(:get => "/apps/1").to route_to("apps#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/apps/1/edit").to route_to("apps#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/apps").to route_to("apps#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/apps/1").to route_to("apps#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/apps/1").to route_to("apps#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/apps/1").to route_to("apps#destroy", :id => "1")
    end
  end
end
