require 'will_paginate/array'

require 'active_support'
require 'active_support/core_ext'



class GoogleplaysController < ApplicationController
  # GET /googleplays
  # GET /googleplays.json
  def index
    @googleplays = Googleplay.all.order_by(:updatedAt => 'desc').paginate(page: params[:page], per_page: 50)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @googleplays}
    end
  end

  # GET /googleplays/1
  # GET /googleplays/1.json
  def show
    @googleplay = Googleplay.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @googleplay }
    end
  end




end
