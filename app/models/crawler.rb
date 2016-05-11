class Crawler
  include Mongoid::Document
  field :title, type: String
  field :crawler_name, type: String
  field :domain, type: String
end
