require 'will_paginate/array'

require 'active_support'
require 'active_support/core_ext'


class HarajsController < ApplicationController
  # GET /harajs
  # GET /harajs.json
  def index

    _all = Haraj.all
    @harajs = _all.order_by(:updated_at => 'desc').paginate(page: params[:page], per_page: 50)
    @count = _all.count

    @from_homepage = {
        'opensooq' => 'https://sa.opensooq.com/ar/find?term=&cat_id=&scid=&city=&allposts_cb=true&allposts=no&price_from=&price_to=&page=1',
        'mstaml' => 'http://www.mstaml.com/market/?t=0&l=0&d=0&x=&u=&o=3',
        'harajsa' => 'https://haraj.com.sa'
    }

    respond_to do |format|
      format.html # index.html.erb
      format.json {
        render :json => {
            :jobs => @harajs,
            :count => @count,
            :from_homepage => @from_homepage
        }
      }
    end
  end

  # GET /harajs/1
  # GET /harajs/1.json
  def show
    @haraj = Haraj.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @haraj }
    end
  end

  # GET /harajs/new
  # GET /harajs/new.json
  def new
    @haraj = Haraj.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @haraj }
    end
  end

  # GET /harajs/1/edit
  def edit
    @haraj = Haraj.find(params[:id])
  end

  # POST /harajs
  # POST /harajs.json
  def create
    @haraj = Haraj.new(params[:haraj])

    respond_to do |format|
      if @haraj.save
        format.html { redirect_to @haraj, notice: 'Haraj was successfully created.' }
        format.json { render json: @haraj, status: :created, location: @haraj }
      else
        format.html { render action: "new" }
        format.json { render json: @haraj.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /harajs/1
  # PUT /harajs/1.json
  def update
    @haraj = Haraj.find(params[:id])

    respond_to do |format|
      if @haraj.update_attributes(params[:haraj])
        format.html { redirect_to @haraj, notice: 'Haraj was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @haraj.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /harajs/1
  # DELETE /harajs/1.json
  def destroy
    @haraj = Haraj.find(params[:id])
    @haraj.destroy

    respond_to do |format|
      format.html { redirect_to harajs_url }
      format.json { head :no_content }
    end
  end
end
