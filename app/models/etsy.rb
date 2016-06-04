class Etsy
  include Mongoid::Document
  include Mongoid::Timestamps

  field :url, type: String
  field :title, type: String
  field :currencyValue, type: String
  field :reviews, type: String
  field :favorites, type: String
  field :description, type: String
  field :images, type: Array
end
