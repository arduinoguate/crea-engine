require "rails_helper"

RSpec.describe CreaModulesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/crea_modules").to route_to("crea_modules#index")
    end

    it "routes to #new" do
      expect(:get => "/crea_modules/new").to route_to("crea_modules#new")
    end

    it "routes to #show" do
      expect(:get => "/crea_modules/1").to route_to("crea_modules#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/crea_modules/1/edit").to route_to("crea_modules#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/crea_modules").to route_to("crea_modules#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/crea_modules/1").to route_to("crea_modules#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/crea_modules/1").to route_to("crea_modules#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/crea_modules/1").to route_to("crea_modules#destroy", :id => "1")
    end

  end
end
