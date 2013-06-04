require 'spec_helper'

describe "VentasProductos" do
  describe "GET /ventas_productos" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get ventas_productos_path
      response.status.should be(200)
    end
  end
end
