class Proposal
  include Mongoid::Document
  field :jobid, type: String
  field :content, type: String
  field :createdat, type: String
  field :updatedat, type: String
end
