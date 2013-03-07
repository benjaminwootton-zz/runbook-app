require "spec_helper"

describe StepValidationsController do
  describe "routing" do

    it "routes to #index" do
      get("/step_validations").should route_to("step_validations#index")
    end

    it "routes to #new" do
      get("/step_validations/new").should route_to("step_validations#new")
    end

    it "routes to #show" do
      get("/step_validations/1").should route_to("step_validations#show", :id => "1")
    end

    it "routes to #edit" do
      get("/step_validations/1/edit").should route_to("step_validations#edit", :id => "1")
    end

    it "routes to #create" do
      post("/step_validations").should route_to("step_validations#create")
    end

    it "routes to #update" do
      put("/step_validations/1").should route_to("step_validations#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/step_validations/1").should route_to("step_validations#destroy", :id => "1")
    end

  end
end
