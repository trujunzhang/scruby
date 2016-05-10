class DealsdirectnavbarsController < ApplicationController
  # GET /dealsdirectnavbars
  # GET /dealsdirectnavbars.json
  def index
    @dealsdirectnavbars = Dealsdirectnavbar.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @dealsdirectnavbars }
    end
  end

  # GET /dealsdirectnavbars/1
  # GET /dealsdirectnavbars/1.json
  def show
    @dealsdirectnavbar = Dealsdirectnavbar.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @dealsdirectnavbar }
    end
  end

  # GET /dealsdirectnavbars/new
  # GET /dealsdirectnavbars/new.json
  def new
    @dealsdirectnavbar = Dealsdirectnavbar.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @dealsdirectnavbar }
    end
  end

  # GET /dealsdirectnavbars/1/edit
  def edit
    @dealsdirectnavbar = Dealsdirectnavbar.find(params[:id])
  end

  # POST /dealsdirectnavbars
  # POST /dealsdirectnavbars.json
  def create
    @dealsdirectnavbar = Dealsdirectnavbar.new(params[:dealsdirectnavbar])

    respond_to do |format|
      if @dealsdirectnavbar.save
        format.html { redirect_to @dealsdirectnavbar, notice: 'Dealsdirectnavbar was successfully created.' }
        format.json { render json: @dealsdirectnavbar, status: :created, location: @dealsdirectnavbar }
      else
        format.html { render action: "new" }
        format.json { render json: @dealsdirectnavbar.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /dealsdirectnavbars/1
  # PUT /dealsdirectnavbars/1.json
  def update
    @dealsdirectnavbar = Dealsdirectnavbar.find(params[:id])

    respond_to do |format|
      if @dealsdirectnavbar.update_attributes(params[:dealsdirectnavbar])
        format.html { redirect_to @dealsdirectnavbar, notice: 'Dealsdirectnavbar was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @dealsdirectnavbar.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dealsdirectnavbars/1
  # DELETE /dealsdirectnavbars/1.json
  def destroy
    @dealsdirectnavbar = Dealsdirectnavbar.find(params[:id])
    @dealsdirectnavbar.destroy

    respond_to do |format|
      format.html { redirect_to dealsdirectnavbars_url }
      format.json { head :no_content }
    end
  end
end
