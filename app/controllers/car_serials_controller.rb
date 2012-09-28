class CarSerialsController < ApplicationController
  # GET /car_serials
  # GET /car_serials.json
  def index
    @car_serials = CarSerial.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @car_serials }
    end
  end

  # GET /car_serials/1
  # GET /car_serials/1.json
  def show
    @car_serial = CarSerial.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @car_serial }
    end
  end

  # GET /car_serials/new
  # GET /car_serials/new.json
  def new
    @car_serial = CarSerial.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @car_serial }
    end
  end

  # GET /car_serials/1/edit
  def edit
    @car_serial = CarSerial.find(params[:id])
  end

  # POST /car_serials
  # POST /car_serials.json
  def create
    @car_serial = CarSerial.new(params[:car_serial])

    respond_to do |format|
      if @car_serial.save
        format.html { redirect_to @car_serial, notice: 'Car serial was successfully created.' }
        format.json { render json: @car_serial, status: :created, location: @car_serial }
      else
        format.html { render action: "new" }
        format.json { render json: @car_serial.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /car_serials/1
  # PUT /car_serials/1.json
  def update
    @car_serial = CarSerial.find(params[:id])

    respond_to do |format|
      if @car_serial.update_attributes(params[:car_serial])
        format.html { redirect_to @car_serial, notice: 'Car serial was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @car_serial.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /car_serials/1
  # DELETE /car_serials/1.json
  def destroy
    @car_serial = CarSerial.find(params[:id])
    @car_serial.destroy

    respond_to do |format|
      format.html { redirect_to car_serials_url }
      format.json { head :no_content }
    end
  end
end
