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

describe VentaController do

  # This should return the minimal set of attributes required to create a valid
  # Ventum. As you add validations to Ventum, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    { "cliente_id" => "1" }
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # VentaController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all venta as @venta" do
      ventum = Ventum.create! valid_attributes
      get :index, {}, valid_session
      assigns(:venta).should eq([ventum])
    end
  end

  describe "GET show" do
    it "assigns the requested ventum as @ventum" do
      ventum = Ventum.create! valid_attributes
      get :show, {:id => ventum.to_param}, valid_session
      assigns(:ventum).should eq(ventum)
    end
  end

  describe "GET new" do
    it "assigns a new ventum as @ventum" do
      get :new, {}, valid_session
      assigns(:ventum).should be_a_new(Ventum)
    end
  end

  describe "GET edit" do
    it "assigns the requested ventum as @ventum" do
      ventum = Ventum.create! valid_attributes
      get :edit, {:id => ventum.to_param}, valid_session
      assigns(:ventum).should eq(ventum)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Ventum" do
        expect {
          post :create, {:ventum => valid_attributes}, valid_session
        }.to change(Ventum, :count).by(1)
      end

      it "assigns a newly created ventum as @ventum" do
        post :create, {:ventum => valid_attributes}, valid_session
        assigns(:ventum).should be_a(Ventum)
        assigns(:ventum).should be_persisted
      end

      it "redirects to the created ventum" do
        post :create, {:ventum => valid_attributes}, valid_session
        response.should redirect_to(Ventum.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved ventum as @ventum" do
        # Trigger the behavior that occurs when invalid params are submitted
        Ventum.any_instance.stub(:save).and_return(false)
        post :create, {:ventum => { "cliente_id" => "invalid value" }}, valid_session
        assigns(:ventum).should be_a_new(Ventum)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Ventum.any_instance.stub(:save).and_return(false)
        post :create, {:ventum => { "cliente_id" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested ventum" do
        ventum = Ventum.create! valid_attributes
        # Assuming there are no other venta in the database, this
        # specifies that the Ventum created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Ventum.any_instance.should_receive(:update_attributes).with({ "cliente_id" => "1" })
        put :update, {:id => ventum.to_param, :ventum => { "cliente_id" => "1" }}, valid_session
      end

      it "assigns the requested ventum as @ventum" do
        ventum = Ventum.create! valid_attributes
        put :update, {:id => ventum.to_param, :ventum => valid_attributes}, valid_session
        assigns(:ventum).should eq(ventum)
      end

      it "redirects to the ventum" do
        ventum = Ventum.create! valid_attributes
        put :update, {:id => ventum.to_param, :ventum => valid_attributes}, valid_session
        response.should redirect_to(ventum)
      end
    end

    describe "with invalid params" do
      it "assigns the ventum as @ventum" do
        ventum = Ventum.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Ventum.any_instance.stub(:save).and_return(false)
        put :update, {:id => ventum.to_param, :ventum => { "cliente_id" => "invalid value" }}, valid_session
        assigns(:ventum).should eq(ventum)
      end

      it "re-renders the 'edit' template" do
        ventum = Ventum.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Ventum.any_instance.stub(:save).and_return(false)
        put :update, {:id => ventum.to_param, :ventum => { "cliente_id" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested ventum" do
      ventum = Ventum.create! valid_attributes
      expect {
        delete :destroy, {:id => ventum.to_param}, valid_session
      }.to change(Ventum, :count).by(-1)
    end

    it "redirects to the venta list" do
      ventum = Ventum.create! valid_attributes
      delete :destroy, {:id => ventum.to_param}, valid_session
      response.should redirect_to(venta_url)
    end
  end

end
