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

describe Cpanel::PostsController do

  # This should return the minimal set of attributes required to create a valid
  # Cpanel::Post. As you add validations to Cpanel::Post, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # Cpanel::PostsController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all cpanel_posts as @cpanel_posts" do
      post = Cpanel::Post.create! valid_attributes
      get :index, {}, valid_session
      assigns(:cpanel_posts).should eq([post])
    end
  end

  describe "GET show" do
    it "assigns the requested cpanel_post as @cpanel_post" do
      post = Cpanel::Post.create! valid_attributes
      get :show, {:id => post.to_param}, valid_session
      assigns(:cpanel_post).should eq(post)
    end
  end

  describe "GET new" do
    it "assigns a new cpanel_post as @cpanel_post" do
      get :new, {}, valid_session
      assigns(:cpanel_post).should be_a_new(Cpanel::Post)
    end
  end

  describe "GET edit" do
    it "assigns the requested cpanel_post as @cpanel_post" do
      post = Cpanel::Post.create! valid_attributes
      get :edit, {:id => post.to_param}, valid_session
      assigns(:cpanel_post).should eq(post)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Cpanel::Post" do
        expect {
          post :create, {:cpanel_post => valid_attributes}, valid_session
        }.to change(Cpanel::Post, :count).by(1)
      end

      it "assigns a newly created cpanel_post as @cpanel_post" do
        post :create, {:cpanel_post => valid_attributes}, valid_session
        assigns(:cpanel_post).should be_a(Cpanel::Post)
        assigns(:cpanel_post).should be_persisted
      end

      it "redirects to the created cpanel_post" do
        post :create, {:cpanel_post => valid_attributes}, valid_session
        response.should redirect_to(Cpanel::Post.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved cpanel_post as @cpanel_post" do
        # Trigger the behavior that occurs when invalid params are submitted
        Cpanel::Post.any_instance.stub(:save).and_return(false)
        post :create, {:cpanel_post => {}}, valid_session
        assigns(:cpanel_post).should be_a_new(Cpanel::Post)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Cpanel::Post.any_instance.stub(:save).and_return(false)
        post :create, {:cpanel_post => {}}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested cpanel_post" do
        post = Cpanel::Post.create! valid_attributes
        # Assuming there are no other cpanel_posts in the database, this
        # specifies that the Cpanel::Post created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Cpanel::Post.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, {:id => post.to_param, :cpanel_post => {'these' => 'params'}}, valid_session
      end

      it "assigns the requested cpanel_post as @cpanel_post" do
        post = Cpanel::Post.create! valid_attributes
        put :update, {:id => post.to_param, :cpanel_post => valid_attributes}, valid_session
        assigns(:cpanel_post).should eq(post)
      end

      it "redirects to the cpanel_post" do
        post = Cpanel::Post.create! valid_attributes
        put :update, {:id => post.to_param, :cpanel_post => valid_attributes}, valid_session
        response.should redirect_to(post)
      end
    end

    describe "with invalid params" do
      it "assigns the cpanel_post as @cpanel_post" do
        post = Cpanel::Post.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Cpanel::Post.any_instance.stub(:save).and_return(false)
        put :update, {:id => post.to_param, :cpanel_post => {}}, valid_session
        assigns(:cpanel_post).should eq(post)
      end

      it "re-renders the 'edit' template" do
        post = Cpanel::Post.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Cpanel::Post.any_instance.stub(:save).and_return(false)
        put :update, {:id => post.to_param, :cpanel_post => {}}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested cpanel_post" do
      post = Cpanel::Post.create! valid_attributes
      expect {
        delete :destroy, {:id => post.to_param}, valid_session
      }.to change(Cpanel::Post, :count).by(-1)
    end

    it "redirects to the cpanel_posts list" do
      post = Cpanel::Post.create! valid_attributes
      delete :destroy, {:id => post.to_param}, valid_session
      response.should redirect_to(cpanel_posts_url)
    end
  end

end
