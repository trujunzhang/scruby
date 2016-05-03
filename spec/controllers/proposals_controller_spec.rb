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

describe ProposalsController do

  # This should return the minimal set of attributes required to create a valid
  # Proposal. As you add validations to Proposal, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "jobid" => "MyString" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # ProposalsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all proposals as @proposals" do
      proposal = Proposal.create! valid_attributes
      get :index, {}, valid_session
      assigns(:proposals).should eq([proposal])
    end
  end

  describe "GET show" do
    it "assigns the requested proposal as @proposal" do
      proposal = Proposal.create! valid_attributes
      get :show, {:id => proposal.to_param}, valid_session
      assigns(:proposal).should eq(proposal)
    end
  end

  describe "GET new" do
    it "assigns a new proposal as @proposal" do
      get :new, {}, valid_session
      assigns(:proposal).should be_a_new(Proposal)
    end
  end

  describe "GET edit" do
    it "assigns the requested proposal as @proposal" do
      proposal = Proposal.create! valid_attributes
      get :edit, {:id => proposal.to_param}, valid_session
      assigns(:proposal).should eq(proposal)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Proposal" do
        expect {
          post :create, {:proposal => valid_attributes}, valid_session
        }.to change(Proposal, :count).by(1)
      end

      it "assigns a newly created proposal as @proposal" do
        post :create, {:proposal => valid_attributes}, valid_session
        assigns(:proposal).should be_a(Proposal)
        assigns(:proposal).should be_persisted
      end

      it "redirects to the created proposal" do
        post :create, {:proposal => valid_attributes}, valid_session
        response.should redirect_to(Proposal.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved proposal as @proposal" do
        # Trigger the behavior that occurs when invalid params are submitted
        Proposal.any_instance.stub(:save).and_return(false)
        post :create, {:proposal => { "jobid" => "invalid value" }}, valid_session
        assigns(:proposal).should be_a_new(Proposal)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Proposal.any_instance.stub(:save).and_return(false)
        post :create, {:proposal => { "jobid" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested proposal" do
        proposal = Proposal.create! valid_attributes
        # Assuming there are no other proposals in the database, this
        # specifies that the Proposal created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Proposal.any_instance.should_receive(:update_attributes).with({ "jobid" => "MyString" })
        put :update, {:id => proposal.to_param, :proposal => { "jobid" => "MyString" }}, valid_session
      end

      it "assigns the requested proposal as @proposal" do
        proposal = Proposal.create! valid_attributes
        put :update, {:id => proposal.to_param, :proposal => valid_attributes}, valid_session
        assigns(:proposal).should eq(proposal)
      end

      it "redirects to the proposal" do
        proposal = Proposal.create! valid_attributes
        put :update, {:id => proposal.to_param, :proposal => valid_attributes}, valid_session
        response.should redirect_to(proposal)
      end
    end

    describe "with invalid params" do
      it "assigns the proposal as @proposal" do
        proposal = Proposal.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Proposal.any_instance.stub(:save).and_return(false)
        put :update, {:id => proposal.to_param, :proposal => { "jobid" => "invalid value" }}, valid_session
        assigns(:proposal).should eq(proposal)
      end

      it "re-renders the 'edit' template" do
        proposal = Proposal.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Proposal.any_instance.stub(:save).and_return(false)
        put :update, {:id => proposal.to_param, :proposal => { "jobid" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested proposal" do
      proposal = Proposal.create! valid_attributes
      expect {
        delete :destroy, {:id => proposal.to_param}, valid_session
      }.to change(Proposal, :count).by(-1)
    end

    it "redirects to the proposals list" do
      proposal = Proposal.create! valid_attributes
      delete :destroy, {:id => proposal.to_param}, valid_session
      response.should redirect_to(proposals_url)
    end
  end

end
