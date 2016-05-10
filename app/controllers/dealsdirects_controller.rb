require 'will_paginate/array'

require 'active_support'
require 'active_support/core_ext'


class DealsdirectsController < ApplicationController
  # GET /dealsdirects
  # GET /dealsdirects.json
  def index
    _all = Dealsdirect.all
    @dealsdirects = _all.order_by(:updatedAt => 'desc').paginate(page: params[:page], per_page: 50)
    @count = _all.count

    respond_to do |format|
      format.html # index.html.erb

      format.json {
        render :json => {
            :jobs => @dealsdirects,
            :count => @count
        }
      }
    end
  end

  # GET /dealsdirects/1
  # GET /dealsdirects/1.json
  def show
    @dealsdirect = Dealsdirect.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @dealsdirect }
    end
  end

  # GET /dealsdirects/new
  # GET /dealsdirects/new.json
  def new
    @dealsdirect = Dealsdirect.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @dealsdirect }
    end
  end

  # GET /dealsdirects/1/edit
  def edit
    @dealsdirect = Dealsdirect.find(params[:id])
  end

  # POST /dealsdirects
  # POST /dealsdirects.json
  def create
    @dealsdirect = Dealsdirect.new(params[:dealsdirect])

    respond_to do |format|
      if @dealsdirect.save
        format.html { redirect_to @dealsdirect, notice: 'Dealsdirect was successfully created.' }
        format.json { render json: @dealsdirect, status: :created, location: @dealsdirect }
      else
        format.html { render action: "new" }
        format.json { render json: @dealsdirect.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /dealsdirects/1
  # PUT /dealsdirects/1.json
  def update
    @dealsdirect = Dealsdirect.find(params[:id])

    respond_to do |format|
      if @dealsdirect.update_attributes(params[:dealsdirect])
        format.html { redirect_to @dealsdirect, notice: 'Dealsdirect was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @dealsdirect.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dealsdirects/1
  # DELETE /dealsdirects/1.json
  def destroy
    @dealsdirect = Dealsdirect.find(params[:id])
    @dealsdirect.destroy

    respond_to do |format|
      format.html { redirect_to dealsdirects_url }
      format.json { head :no_content }
    end
  end
end
