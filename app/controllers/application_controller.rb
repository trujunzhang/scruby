require 'excel_generator'

class ApplicationController < ActionController::Base
  protect_from_forgery

  def run_task
    _commander = params[:commander]
    _result = system(_commander)

    respond_to do |format|
      format.json do
        render json: {
            result: "successful"
        }.to_json
      end
    end
  end

  def user_email

    @email= ""
    if current_user
      @email = current_user.email
    end

    respond_to do |format|
      format.json do
        render json: {
            email: @email
        }.to_json
      end
    end
  end

  def crawled_count
    _type = params[:type]

    @count= get_Rows_Count(_type)

    respond_to do |format|
      format.json do
        render json: {
            count: @count
        }.to_json
      end
    end
  end

  def export_to_cvs
    _type = params[:type]
    _email = params[:email]

    _row = get_Rows(_type)
    _generator = get_Generator(_type)
    _item_size = (_row.size)

    ExcelUtils.new(_generator).generate_xls(_row.order_by(:updatedAt => 'desc')).export_and_notifier_email(_email, request.base_url, _item_size)

    respond_to do |format|
      format.json do
        render json: {
            result: "successful"
        }.to_json
      end
    end
  end

  def export_to_excel
    _type = params[:type]
    _email = params[:email]

    _row = get_Rows(_type)
    _generator = get_Generator(_type)
    _item_size = (_row.size)

    ExcelUtils.new(_generator).generate_xls(_row.order_by(:updatedAt => 'desc')).export_and_notifier_email(_email, request.base_url, _item_size)

    respond_to do |format|
      format.json do
        render json: {
            result: "successful"
        }.to_json
      end
    end
  end

  private
  def get_Rows(type)
    if type == "googleplays"
      Googleplay.all
    elsif type == "itunes"
      Itune.all
    elsif type == "dealsdirects"
      Dealsdirect.all
    elsif type == "realtors"
      Realtor.all
    elsif type == "aliexpresss"
      Aliexpress.all
    end
  end

  private
  def get_Rows_Count(type)
    if type == "googleplays"
      Googleplay.count
    elsif type == "itunes"
      Itune.count
    elsif type == "dealsdirects"
      Dealsdirect.count
    elsif type == "realtors"
      Realtor.count
    elsif type == "aliexpresss"
      Aliexpress.count
    end
  end

  private
  def get_Generator(type)
    if type == "googleplays"
      GooglePlaysGenerator.new("googleplays")
    elsif type == "itunes"
      ItunesGenerator.new("itunes")
    elsif type == "dealsdirects"
      DealsDirectsGenerator.new("dealsdirects")
    elsif type == "realtors"
      RealtorsGenerator.new("realtors")
    elsif type == "aliexpresss"
      AliexpresssGenerator.new("aliexpress")
    end
  end

end
