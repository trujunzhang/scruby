class Dealsdirect
  include Mongoid::Document

  field :updateAt, type: String

  field :sub1, type: String
  field :sub2, type: String
  field :sub3, type: String
  field :url, type: String
  field :guid, type: String
  field :brand, type: String
  field :title, type: String
  field :new_price, type: String
  field :label_price, type: String
  field :rrp_text, type: String
  field :thumbnail, type: String
end
