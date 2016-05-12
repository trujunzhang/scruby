class Job
  include Mongoid::Document
  include Mongoid::Timestamps

  field :title, type: String
  field :jobtype, type: String
  field :proposalid, type: String
  field :url, type: String
  field :from, type: String
  field :customer, type: String
  field :description, type: String
  field :app, type: String
  field :startdate, type: String
  field :enddate, type: String
  field :price, type: String
  field :status, type: String


  def self.search(model)
    if model.title
      self.where(title: /#{model.title}/i)
    end
  end


end
