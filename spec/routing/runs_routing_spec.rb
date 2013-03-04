require "spec_helper"

describe RunsController do
  describe "routing" do

    it "routes to #index" do
      get("/runs").should route_to("runs#index")
    end

    it "routes to #new" do
      get("/runs/new").should route_to("runs#new")
    end

    it "routes to #show" do
      get("/runs/1").should route_to("runs#show", :id => "1")
    end

    it "routes to #edit" do
      get("/runs/1/edit").should route_to("runs#edit", :id => "1")
    end

    it "routes to #create" do
      post("/runs").should route_to("runs#create")
    end

    it "routes to #update" do
      put("/runs/1").should route_to("runs#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/runs/1").should route_to("runs#destroy", :id => "1")
    end

  end
end
