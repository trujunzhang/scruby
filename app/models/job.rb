class Job
  include Mongoid::Document
  include Mongoid::Timestamps

  field :title, type: String
  field :jobtype, type: String
  field :proposalid, type: String
  field :url, type: String
  field :customer, type: String
  field :description, type: String
  field :app, type: String
  field :startdate, type: String
  field :enddate, type: String
  field :price, type: String
  field :status, type: String
end
