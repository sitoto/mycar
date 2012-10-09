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

describe CarSerialsController do

  # This should return the minimal set of attributes required to create a valid
  # CarSerial. As you add validations to CarSerial, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # CarSerialsController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all car_serials as @car_serials" do
      car_serial = CarSerial.create! valid_attributes
      get :index, {}, valid_session
      assigns(:car_serials).should eq([car_serial])
    end
  end

  describe "GET show" do
    it "assigns the requested car_serial as @car_serial" do
      car_serial = CarSerial.create! valid_attributes
      get :show, {:id => car_serial.to_param}, valid_session
      assigns(:car_serial).should eq(car_serial)
    end
  end

  describe "GET new" do
    it "assigns a new car_serial as @car_serial" do
      get :new, {}, valid_session
      assigns(:car_serial).should be_a_new(CarSerial)
    end
  end

  describe "GET edit" do
    it "assigns the requested car_serial as @car_serial" do
      car_serial = CarSerial.create! valid_attributes
      get :edit, {:id => car_serial.to_param}, valid_session
      assigns(:car_serial).should eq(car_serial)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new CarSerial" do
        expect {
          post :create, {:car_serial => valid_attributes}, valid_session
        }.to change(CarSerial, :count).by(1)
      end

      it "assigns a newly created car_serial as @car_serial" do
        post :create, {:car_serial => valid_attributes}, valid_session
        assigns(:car_serial).should be_a(CarSerial)
        assigns(:car_serial).should be_persisted
      end

      it "redirects to the created car_serial" do
        post :create, {:car_serial => valid_attributes}, valid_session
        response.should redirect_to(CarSerial.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved car_serial as @car_serial" do
        # Trigger the behavior that occurs when invalid params are submitted
        CarSerial.any_instance.stub(:save).and_return(false)
        post :create, {:car_serial => {}}, valid_session
        assigns(:car_serial).should be_a_new(CarSerial)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        CarSerial.any_instance.stub(:save).and_return(false)
        post :create, {:car_serial => {}}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested car_serial" do
        car_serial = CarSerial.create! valid_attributes
        # Assuming there are no other car_serials in the database, this
        # specifies that the CarSerial created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        CarSerial.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, {:id => car_serial.to_param, :car_serial => {'these' => 'params'}}, valid_session
      end

      it "assigns the requested car_serial as @car_serial" do
        car_serial = CarSerial.create! valid_attributes
        put :update, {:id => car_serial.to_param, :car_serial => valid_attributes}, valid_session
        assigns(:car_serial).should eq(car_serial)
      end

      it "redirects to the car_serial" do
        car_serial = CarSerial.create! valid_attributes
        put :update, {:id => car_serial.to_param, :car_serial => valid_attributes}, valid_session
        response.should redirect_to(car_serial)
      end
    end

    describe "with invalid params" do
      it "assigns the car_serial as @car_serial" do
        car_serial = CarSerial.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        CarSerial.any_instance.stub(:save).and_return(false)
        put :update, {:id => car_serial.to_param, :car_serial => {}}, valid_session
        assigns(:car_serial).should eq(car_serial)
      end

      it "re-renders the 'edit' template" do
        car_serial = CarSerial.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        CarSerial.any_instance.stub(:save).and_return(false)
        put :update, {:id => car_serial.to_param, :car_serial => {}}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested car_serial" do
      car_serial = CarSerial.create! valid_attributes
      expect {
        delete :destroy, {:id => car_serial.to_param}, valid_session
      }.to change(CarSerial, :count).by(-1)
    end

    it "redirects to the car_serials list" do
      car_serial = CarSerial.create! valid_attributes
      delete :destroy, {:id => car_serial.to_param}, valid_session
      response.should redirect_to(car_serials_url)
    end
  end

end