require "spec_helper"

describe RunStepsController do
  describe "routing" do

    it "routes to #index" do
      get("/run_steps").should route_to("run_steps#index")
    end

    it "routes to #new" do
      get("/run_steps/new").should route_to("run_steps#new")
    end

    it "routes to #show" do
      get("/run_steps/1").should route_to("run_steps#show", :id => "1")
    end

    it "routes to #edit" do
      get("/run_steps/1/edit").should route_to("run_steps#edit", :id => "1")
    end

    it "routes to #create" do
      post("/run_steps").should route_to("run_steps#create")
    end

    it "routes to #update" do
      put("/run_steps/1").should route_to("run_steps#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/run_steps/1").should route_to("run_steps#destroy", :id => "1")
    end

  end
end
