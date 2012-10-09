class QqcarsController < ApplicationController
  # GET /qqcars
  # GET /qqcars.json
  def index
    @qqcars = Qqcar.asc("name_pinyin").page  params[:page]
    
    respond_to do |format|
      format.html # index.html.erb
      format.csv { send_data @qqcars.to_csv }
      format.xls
      format.json { render json: @qqcars }
    end
  end

  def download
    @qqcars = Qqcar.all #.asc("name_pinyin").page  params[:page]
    
    respond_to do |format|
      format.html # index.html.erb
      format.csv { send_data @qqcars.to_csv }
      format.xls
      format.json { render json: @qqcars }
    end
  end

  # GET /qqcars/1
  # GET /qqcars/1.json
  def show
    @qqcar = Qqcar.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @qqcar }
    end
  end

  # GET /qqcars/new
  # GET /qqcars/new.json
  def new
    @qqcar = Qqcar.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @qqcar }
    end
  end

  # GET /qqcars/1/edit
  def edit
    @qqcar = Qqcar.find(params[:id])
  end

  # POST /qqcars
  # POST /qqcars.json
  def create
    @qqcar = Qqcar.new(params[:qqcar])

    respond_to do |format|
      if @qqcar.save
        format.html { redirect_to @qqcar, notice: 'Qqcar was successfully created.' }
        format.json { render json: @qqcar, status: :created, location: @qqcar }
      else
        format.html { render action: "new" }
        format.json { render json: @qqcar.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /qqcars/1
  # PUT /qqcars/1.json
  def update
    @qqcar = Qqcar.find(params[:id])

    respond_to do |format|
      if @qqcar.update_attributes(params[:qqcar])
        format.html { redirect_to @qqcar, notice: 'Qqcar was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @qqcar.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /qqcars/1
  # DELETE /qqcars/1.json
  def destroy
    @qqcar = Qqcar.find(params[:id])
    @qqcar.destroy

    respond_to do |format|
      format.html { redirect_to qqcars_url }
      format.json { head :no_content }
    end
  end
end
