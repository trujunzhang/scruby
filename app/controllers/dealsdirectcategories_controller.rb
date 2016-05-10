class DealsdirectcategoriesController < ApplicationController
  # GET /dealsdirectcategories
  # GET /dealsdirectcategories.json
  def index
    @dealsdirectcategories = Dealsdirectcategory.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @dealsdirectcategories }
    end
  end

  # GET /dealsdirectcategories/1
  # GET /dealsdirectcategories/1.json
  def show
    @dealsdirectcategory = Dealsdirectcategory.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @dealsdirectcategory }
    end
  end

  # GET /dealsdirectcategories/new
  # GET /dealsdirectcategories/new.json
  def new
    @dealsdirectcategory = Dealsdirectcategory.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @dealsdirectcategory }
    end
  end

  # GET /dealsdirectcategories/1/edit
  def edit
    @dealsdirectcategory = Dealsdirectcategory.find(params[:id])
  end

  # POST /dealsdirectcategories
  # POST /dealsdirectcategories.json
  def create
    @dealsdirectcategory = Dealsdirectcategory.new(params[:dealsdirectcategory])

    respond_to do |format|
      if @dealsdirectcategory.save
        format.html { redirect_to @dealsdirectcategory, notice: 'Dealsdirectcategory was successfully created.' }
        format.json { render json: @dealsdirectcategory, status: :created, location: @dealsdirectcategory }
      else
        format.html { render action: "new" }
        format.json { render json: @dealsdirectcategory.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /dealsdirectcategories/1
  # PUT /dealsdirectcategories/1.json
  def update
    @dealsdirectcategory = Dealsdirectcategory.find(params[:id])

    respond_to do |format|
      if @dealsdirectcategory.update_attributes(params[:dealsdirectcategory])
        format.html { redirect_to @dealsdirectcategory, notice: 'Dealsdirectcategory was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @dealsdirectcategory.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dealsdirectcategories/1
  # DELETE /dealsdirectcategories/1.json
  def destroy
    @dealsdirectcategory = Dealsdirectcategory.find(params[:id])
    @dealsdirectcategory.destroy

    respond_to do |format|
      format.html { redirect_to dealsdirectcategories_url }
      format.json { head :no_content }
    end
  end
end
