class Crawler
  include Mongoid::Document
  include Mongoid::Timestamps

  field :title, type: String
  field :crawler_name, type: String
  field :domain, type: String
end
