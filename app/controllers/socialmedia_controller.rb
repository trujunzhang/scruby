class SocialmediaController < ApplicationController
  # GET /socialmedia
  # GET /socialmedia.json
  def index
    @socialmedia = Socialmedium.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @socialmedia }
    end
  end

  # GET /socialmedia/1
  # GET /socialmedia/1.json
  def show
    @socialmedium = Socialmedium.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @socialmedium }
    end
  end

  # GET /socialmedia/new
  # GET /socialmedia/new.json
  def new
    @socialmedium = Socialmedium.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @socialmedium }
    end
  end

  # GET /socialmedia/1/edit
  def edit
    @socialmedium = Socialmedium.find(params[:id])
  end

  # POST /socialmedia
  # POST /socialmedia.json
  def create
    @socialmedium = Socialmedium.new(params[:socialmedium])

    respond_to do |format|
      if @socialmedium.save
        format.html { redirect_to @socialmedium, notice: 'Socialmedium was successfully created.' }
        format.json { render json: @socialmedium, status: :created, location: @socialmedium }
      else
        format.html { render action: "new" }
        format.json { render json: @socialmedium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /socialmedia/1
  # PUT /socialmedia/1.json
  def update
    @socialmedium = Socialmedium.find(params[:id])

    respond_to do |format|
      if @socialmedium.update_attributes(params[:socialmedium])
        format.html { redirect_to @socialmedium, notice: 'Socialmedium was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @socialmedium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /socialmedia/1
  # DELETE /socialmedia/1.json
  def destroy
    @socialmedium = Socialmedium.find(params[:id])
    @socialmedium.destroy

    respond_to do |format|
      format.html { redirect_to socialmedia_url }
      format.json { head :no_content }
    end
  end
end
