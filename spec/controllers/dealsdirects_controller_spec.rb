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

describe DealsdirectsController do

  # This should return the minimal set of attributes required to create a valid
  # Dealsdirect. As you add validations to Dealsdirect, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "sub1" => "MyString" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # DealsdirectsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all dealsdirects as @dealsdirects" do
      dealsdirect = Dealsdirect.create! valid_attributes
      get :index, {}, valid_session
      assigns(:dealsdirects).should eq([dealsdirect])
    end
  end

  describe "GET show" do
    it "assigns the requested dealsdirect as @dealsdirect" do
      dealsdirect = Dealsdirect.create! valid_attributes
      get :show, {:id => dealsdirect.to_param}, valid_session
      assigns(:dealsdirect).should eq(dealsdirect)
    end
  end

  describe "GET new" do
    it "assigns a new dealsdirect as @dealsdirect" do
      get :new, {}, valid_session
      assigns(:dealsdirect).should be_a_new(Dealsdirect)
    end
  end

  describe "GET edit" do
    it "assigns the requested dealsdirect as @dealsdirect" do
      dealsdirect = Dealsdirect.create! valid_attributes
      get :edit, {:id => dealsdirect.to_param}, valid_session
      assigns(:dealsdirect).should eq(dealsdirect)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Dealsdirect" do
        expect {
          post :create, {:dealsdirect => valid_attributes}, valid_session
        }.to change(Dealsdirect, :count).by(1)
      end

      it "assigns a newly created dealsdirect as @dealsdirect" do
        post :create, {:dealsdirect => valid_attributes}, valid_session
        assigns(:dealsdirect).should be_a(Dealsdirect)
        assigns(:dealsdirect).should be_persisted
      end

      it "redirects to the created dealsdirect" do
        post :create, {:dealsdirect => valid_attributes}, valid_session
        response.should redirect_to(Dealsdirect.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved dealsdirect as @dealsdirect" do
        # Trigger the behavior that occurs when invalid params are submitted
        Dealsdirect.any_instance.stub(:save).and_return(false)
        post :create, {:dealsdirect => { "sub1" => "invalid value" }}, valid_session
        assigns(:dealsdirect).should be_a_new(Dealsdirect)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Dealsdirect.any_instance.stub(:save).and_return(false)
        post :create, {:dealsdirect => { "sub1" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested dealsdirect" do
        dealsdirect = Dealsdirect.create! valid_attributes
        # Assuming there are no other dealsdirects in the database, this
        # specifies that the Dealsdirect created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Dealsdirect.any_instance.should_receive(:update_attributes).with({ "sub1" => "MyString" })
        put :update, {:id => dealsdirect.to_param, :dealsdirect => { "sub1" => "MyString" }}, valid_session
      end

      it "assigns the requested dealsdirect as @dealsdirect" do
        dealsdirect = Dealsdirect.create! valid_attributes
        put :update, {:id => dealsdirect.to_param, :dealsdirect => valid_attributes}, valid_session
        assigns(:dealsdirect).should eq(dealsdirect)
      end

      it "redirects to the dealsdirect" do
        dealsdirect = Dealsdirect.create! valid_attributes
        put :update, {:id => dealsdirect.to_param, :dealsdirect => valid_attributes}, valid_session
        response.should redirect_to(dealsdirect)
      end
    end

    describe "with invalid params" do
      it "assigns the dealsdirect as @dealsdirect" do
        dealsdirect = Dealsdirect.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Dealsdirect.any_instance.stub(:save).and_return(false)
        put :update, {:id => dealsdirect.to_param, :dealsdirect => { "sub1" => "invalid value" }}, valid_session
        assigns(:dealsdirect).should eq(dealsdirect)
      end

      it "re-renders the 'edit' template" do
        dealsdirect = Dealsdirect.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Dealsdirect.any_instance.stub(:save).and_return(false)
        put :update, {:id => dealsdirect.to_param, :dealsdirect => { "sub1" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested dealsdirect" do
      dealsdirect = Dealsdirect.create! valid_attributes
      expect {
        delete :destroy, {:id => dealsdirect.to_param}, valid_session
      }.to change(Dealsdirect, :count).by(-1)
    end

    it "redirects to the dealsdirects list" do
      dealsdirect = Dealsdirect.create! valid_attributes
      delete :destroy, {:id => dealsdirect.to_param}, valid_session
      response.should redirect_to(dealsdirects_url)
    end
  end

end
