require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe ProveedorsController do

  # This should return the minimal set of attributes required to create a valid
  # Proveedor. As you add validations to Proveedor, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    { "nombre" => "MyString" }
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # ProveedorsController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all proveedors as @proveedors" do
      proveedor = Proveedor.create! valid_attributes
      get :index, {}, valid_session
      assigns(:proveedors).should eq([proveedor])
    end
  end

  describe "GET show" do
    it "assigns the requested proveedor as @proveedor" do
      proveedor = Proveedor.create! valid_attributes
      get :show, {:id => proveedor.to_param}, valid_session
      assigns(:proveedor).should eq(proveedor)
    end
  end

  describe "GET new" do
    it "assigns a new proveedor as @proveedor" do
      get :new, {}, valid_session
      assigns(:proveedor).should be_a_new(Proveedor)
    end
  end

  describe "GET edit" do
    it "assigns the requested proveedor as @proveedor" do
      proveedor = Proveedor.create! valid_attributes
      get :edit, {:id => proveedor.to_param}, valid_session
      assigns(:proveedor).should eq(proveedor)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Proveedor" do
        expect {
          post :create, {:proveedor => valid_attributes}, valid_session
        }.to change(Proveedor, :count).by(1)
      end

      it "assigns a newly created proveedor as @proveedor" do
        post :create, {:proveedor => valid_attributes}, valid_session
        assigns(:proveedor).should be_a(Proveedor)
        assigns(:proveedor).should be_persisted
      end

      it "redirects to the created proveedor" do
        post :create, {:proveedor => valid_attributes}, valid_session
        response.should redirect_to(Proveedor.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved proveedor as @proveedor" do
        # Trigger the behavior that occurs when invalid params are submitted
        Proveedor.any_instance.stub(:save).and_return(false)
        post :create, {:proveedor => { "nombre" => "invalid value" }}, valid_session
        assigns(:proveedor).should be_a_new(Proveedor)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Proveedor.any_instance.stub(:save).and_return(false)
        post :create, {:proveedor => { "nombre" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested proveedor" do
        proveedor = Proveedor.create! valid_attributes
        # Assuming there are no other proveedors in the database, this
        # specifies that the Proveedor created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Proveedor.any_instance.should_receive(:update_attributes).with({ "nombre" => "MyString" })
        put :update, {:id => proveedor.to_param, :proveedor => { "nombre" => "MyString" }}, valid_session
      end

      it "assigns the requested proveedor as @proveedor" do
        proveedor = Proveedor.create! valid_attributes
        put :update, {:id => proveedor.to_param, :proveedor => valid_attributes}, valid_session
        assigns(:proveedor).should eq(proveedor)
      end

      it "redirects to the proveedor" do
        proveedor = Proveedor.create! valid_attributes
        put :update, {:id => proveedor.to_param, :proveedor => valid_attributes}, valid_session
        response.should redirect_to(proveedor)
      end
    end

    describe "with invalid params" do
      it "assigns the proveedor as @proveedor" do
        proveedor = Proveedor.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Proveedor.any_instance.stub(:save).and_return(false)
        put :update, {:id => proveedor.to_param, :proveedor => { "nombre" => "invalid value" }}, valid_session
        assigns(:proveedor).should eq(proveedor)
      end

      it "re-renders the 'edit' template" do
        proveedor = Proveedor.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Proveedor.any_instance.stub(:save).and_return(false)
        put :update, {:id => proveedor.to_param, :proveedor => { "nombre" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested proveedor" do
      proveedor = Proveedor.create! valid_attributes
      expect {
        delete :destroy, {:id => proveedor.to_param}, valid_session
      }.to change(Proveedor, :count).by(-1)
    end

    it "redirects to the proveedors list" do
      proveedor = Proveedor.create! valid_attributes
      delete :destroy, {:id => proveedor.to_param}, valid_session
      response.should redirect_to(proveedors_url)
    end
  end

end
