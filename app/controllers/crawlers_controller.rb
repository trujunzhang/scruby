class CrawlersController < ApplicationController
  # GET /crawlers
  # GET /crawlers.json
  def index
    @crawlers = Crawler.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @crawlers }
    end
  end

  # GET /crawlers/1
  # GET /crawlers/1.json
  def show
    @crawler = Crawler.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @crawler }
    end
  end

  # GET /crawlers/new
  # GET /crawlers/new.json
  def new
    @crawler = Crawler.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @crawler }
    end
  end

  # GET /crawlers/1/edit
  def edit
    @crawler = Crawler.find(params[:id])
  end

  # POST /crawlers
  # POST /crawlers.json
  def create
    @crawler = Crawler.new(params[:crawler])

    respond_to do |format|
      if @crawler.save
        format.html { redirect_to @crawler, notice: 'Crawler was successfully created.' }
        format.json { render json: @crawler, status: :created, location: @crawler }
      else
        format.html { render action: "new" }
        format.json { render json: @crawler.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /crawlers/1
  # PUT /crawlers/1.json
  def update
    @crawler = Crawler.find(params[:id])

    respond_to do |format|
      if @crawler.update_attributes(params[:crawler])
        format.html { redirect_to @crawler, notice: 'Crawler was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @crawler.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /crawlers/1
  # DELETE /crawlers/1.json
  def destroy
    @crawler = Crawler.find(params[:id])
    @crawler.destroy

    respond_to do |format|
      format.html { redirect_to crawlers_url }
      format.json { head :no_content }
    end
  end
end
