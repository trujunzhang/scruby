class Etsy
  include Mongoid::Document
  field :title, type: String
  field :currencyValue, type: String
  field :reviews, type: String
  field :favorites, type: String
  field :description, type: String
  field :images, type: String
end
