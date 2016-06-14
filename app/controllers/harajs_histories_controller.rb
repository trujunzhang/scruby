class HarajsHistoriesController < ApplicationController
  # GET /harajs_histories
  # GET /harajs_histories.json
  def index
    @harajs_histories = HarajsHistory.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @harajs_histories }
    end
  end

  # GET /harajs_histories/1
  # GET /harajs_histories/1.json
  def show
    @harajs_history = HarajsHistory.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @harajs_history }
    end
  end

  # GET /harajs_histories/new
  # GET /harajs_histories/new.json
  def new
    @harajs_history = HarajsHistory.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @harajs_history }
    end
  end

  # GET /harajs_histories/1/edit
  def edit
    @harajs_history = HarajsHistory.find(params[:id])
  end

  # POST /harajs_histories
  # POST /harajs_histories.json
  def create
    @harajs_history = HarajsHistory.new(params[:harajs_history])

    respond_to do |format|
      if @harajs_history.save
        format.html { redirect_to @harajs_history, notice: 'Harajs history was successfully created.' }
        format.json { render json: @harajs_history, status: :created, location: @harajs_history }
      else
        format.html { render action: "new" }
        format.json { render json: @harajs_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /harajs_histories/1
  # PUT /harajs_histories/1.json
  def update
    @harajs_history = HarajsHistory.find(params[:id])

    respond_to do |format|
      if @harajs_history.update_attributes(params[:harajs_history])
        format.html { redirect_to @harajs_history, notice: 'Harajs history was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @harajs_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /harajs_histories/1
  # DELETE /harajs_histories/1.json
  def destroy
    @harajs_history = HarajsHistory.find(params[:id])
    @harajs_history.destroy

    respond_to do |format|
      format.html { redirect_to harajs_histories_url }
      format.json { head :no_content }
    end
  end
end
