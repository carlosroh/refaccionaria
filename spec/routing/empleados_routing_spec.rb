require "spec_helper"

describe EmpleadosController do
  describe "routing" do

    it "routes to #index" do
      get("/empleados").should route_to("empleados#index")
    end

    it "routes to #new" do
      get("/empleados/new").should route_to("empleados#new")
    end

    it "routes to #show" do
      get("/empleados/1").should route_to("empleados#show", :id => "1")
    end

    it "routes to #edit" do
      get("/empleados/1/edit").should route_to("empleados#edit", :id => "1")
    end

    it "routes to #create" do
      post("/empleados").should route_to("empleados#create")
    end

    it "routes to #update" do
      put("/empleados/1").should route_to("empleados#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/empleados/1").should route_to("empleados#destroy", :id => "1")
    end

  end
end
