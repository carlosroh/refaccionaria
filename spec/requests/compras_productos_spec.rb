require 'spec_helper'

describe "ComprasProductos" do
  describe "GET /compras_productos" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get compras_productos_path
      response.status.should be(200)
    end
  end
end
