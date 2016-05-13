class Task
  include Mongoid::Document
  include Mongoid::Timestamps

  field :title, type: String
  field :crawler_id, type: String
  field :commander, type: String
end
