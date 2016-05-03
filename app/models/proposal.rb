class Proposal
  include Mongoid::Document
  include Mongoid::Timestamps

  field :jobid, type: String
  field :title, type: String
  field :content, type: String
  field :createdat, type: String
  field :updatedat, type: String
end
