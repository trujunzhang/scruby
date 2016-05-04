require 'will_paginate/array'

require 'active_support'
require 'active_support/core_ext'

class ItunesController < ApplicationController
  # GET /itunes
  # GET /itunes.json
  def index
    _all = Itune.all
    @itunes = _all.order_by(:updatedAt => 'desc').paginate(page: params[:page], per_page: 50)
    @count = _all.count

    respond_to do |format|
      format.html # index.html.erb

      format.json {
        render :json => {
            :jobs => @itunes,
            :count => @count
        }
      }
    end
  end

  def crawled_count
    @count=(Itune.count).to_s

    # respond_to do |format|
    #   format.html
    #   format.json { render json: @count }
    # end
    # @info = "wh:" + number_with_delimiter(12345678)
    # render json: @info.to_s

    render json: @count
  end

  # GET /itunes/1
  # GET /itunes/1.json
  def show
    @itune = Itune.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @itune }
    end
  end

end
