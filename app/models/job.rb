class Job
  include Mongoid::Document
  field :guid, type: String
  field :title, type: String
  field :url, type: String
  field :customer, type: String
  field :description, type: String
  field :linkto, type: String
  field :startdate, type: String
  field :enddate, type: String
  field :price, type: String
  field :status, type: String
  field :createat, type: String
  field :updatedat, type: String
end
