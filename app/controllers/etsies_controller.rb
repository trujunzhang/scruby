require 'will_paginate/array'

require 'active_support'
require 'active_support/core_ext'

class EtsiesController < ApplicationController
  # GET /etsies
  # GET /etsies.json
  def index
    _all = Etsy.all
    @etsies = _all.order_by(:updated_at => 'desc').paginate(page: params[:page], per_page: 50)
    @count = _all.count

    respond_to do |format|
      format.html # index.html.erb

      format.json {
        render :json => {
            :jobs => @etsies,
            :count => @count
        }
      }
    end
  end

  # GET /etsies/1
  # GET /etsies/1.json
  def show
    @etsy = Etsy.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @etsy }
    end
  end

  # GET /etsies/new
  # GET /etsies/new.json
  def new
    @etsy = Etsy.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @etsy }
    end
  end

  # GET /etsies/1/edit
  def edit
    @etsy = Etsy.find(params[:id])
  end

  # POST /etsies
  # POST /etsies.json
  def create
    @etsy = Etsy.new(params[:etsy])

    respond_to do |format|
      if @etsy.save
        format.html { redirect_to @etsy, notice: 'Etsy was successfully created.' }
        format.json { render json: @etsy, status: :created, location: @etsy }
      else
        format.html { render action: "new" }
        format.json { render json: @etsy.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /etsies/1
  # PUT /etsies/1.json
  def update
    @etsy = Etsy.find(params[:id])

    respond_to do |format|
      if @etsy.update_attributes(params[:etsy])
        format.html { redirect_to @etsy, notice: 'Etsy was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @etsy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /etsies/1
  # DELETE /etsies/1.json
  def destroy
    @etsy = Etsy.find(params[:id])
    @etsy.destroy

    respond_to do |format|
      format.html { redirect_to etsies_url }
      format.json { head :no_content }
    end
  end
end
