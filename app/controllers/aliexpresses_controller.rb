class AliexpressesController < ApplicationController
  # GET /aliexpresses
  # GET /aliexpresses.json
  def index
    @aliexpresses = Aliexpress.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @aliexpresses }
    end
  end

  # GET /aliexpresses/1
  # GET /aliexpresses/1.json
  def show
    @aliexpress = Aliexpress.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @aliexpress }
    end
  end

  # GET /aliexpresses/new
  # GET /aliexpresses/new.json
  def new
    @aliexpress = Aliexpress.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @aliexpress }
    end
  end

  # GET /aliexpresses/1/edit
  def edit
    @aliexpress = Aliexpress.find(params[:id])
  end

  # POST /aliexpresses
  # POST /aliexpresses.json
  def create
    @aliexpress = Aliexpress.new(params[:aliexpress])

    respond_to do |format|
      if @aliexpress.save
        format.html { redirect_to @aliexpress, notice: 'Aliexpress was successfully created.' }
        format.json { render json: @aliexpress, status: :created, location: @aliexpress }
      else
        format.html { render action: "new" }
        format.json { render json: @aliexpress.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /aliexpresses/1
  # PUT /aliexpresses/1.json
  def update
    @aliexpress = Aliexpress.find(params[:id])

    respond_to do |format|
      if @aliexpress.update_attributes(params[:aliexpress])
        format.html { redirect_to @aliexpress, notice: 'Aliexpress was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @aliexpress.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /aliexpresses/1
  # DELETE /aliexpresses/1.json
  def destroy
    @aliexpress = Aliexpress.find(params[:id])
    @aliexpress.destroy

    respond_to do |format|
      format.html { redirect_to aliexpresses_url }
      format.json { head :no_content }
    end
  end
end
