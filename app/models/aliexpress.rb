class Aliexpress
  include Mongoid::Document
  include Mongoid::Timestamps

  field :title, type: String
  field :thumbnail, type: String
  field :seller, type: String
  field :price, type: String
  field :original_price, type: String
  field :shipping, type: String
  field :ship_from, type: String
  field :delivery_time, type: String
  field :rate_num, type: String
  field :total_orders, type: String
end
