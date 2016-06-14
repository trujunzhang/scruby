require 'active_record'

require 'will_paginate/array'

class HarajsCachesController < ApplicationController
  # GET /harajs_caches
  # GET /harajs_caches.json
  def index
    @harajs_caches = HarajsCache.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @harajs_caches }
    end
  end

  # GET /harajs_caches/1
  # GET /harajs_caches/1.json
  def show
    @harajs_cach = HarajsCache.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @harajs_cach }
    end
  end

  # GET /harajs_caches/new
  # GET /harajs_caches/new.json
  def new
    @harajs_cach = HarajsCache.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @harajs_cach }
    end
  end

  # GET /harajs_caches/1/edit
  def edit
    @harajs_cach = HarajsCache.find(params[:id])
  end

  # POST /harajs_caches
  # POST /harajs_caches.json
  def create
    @harajs_cach = HarajsCache.new(params[:harajs_cach])

    respond_to do |format|
      if @harajs_cach.save
        format.html { redirect_to @harajs_cach, notice: 'Harajs cache was successfully created.' }
        format.json { render json: @harajs_cach, status: :created, location: @harajs_cach }
      else
        format.html { render action: "new" }
        format.json { render json: @harajs_cach.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /harajs_caches/1
  # PUT /harajs_caches/1.json
  def update
    @harajs_cach = HarajsCache.find(params[:id])

    respond_to do |format|
      if @harajs_cach.update_attributes(params[:harajs_cach])
        format.html { redirect_to @harajs_cach, notice: 'Harajs cache was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @harajs_cach.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /harajs_caches/1
  # DELETE /harajs_caches/1.json
  def destroy
    @harajs_cach = HarajsCache.find(params[:id])
    @harajs_cach.destroy

    respond_to do |format|
      format.html { redirect_to harajs_caches_url }
      format.json { head :no_content }
    end
  end
end
