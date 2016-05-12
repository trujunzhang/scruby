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


  def self.search_by_title(sub_string)
    self.where(title: /#{sub_string}/i)
  end

  def self.search_by_from(from)
    if from != "All"
      self.where(from: /#{from}/)
    end
  end

end
