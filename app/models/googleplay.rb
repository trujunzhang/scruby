class Googleplay
  include Mongoid::Document
  field :url, type: String
  field :cluster, type: String
  field :category, type: String
  field :price, type: String
  field :thumbnail, type: String
  field :title, type: String
  field :reviewsNum, type: String
  field :datePublished, type: String
  field :website, type: String
  field :email, type: String
  field :address, type: String

  field :updatedAt, type: String
end
