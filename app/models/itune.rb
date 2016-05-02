class Itune
  include Mongoid::Document
  field :guid, type: String
  field :updateAt, type: String
  field :name, type: String
  field :url, type: String
  field :thumbnail, type: String
  field :appLastUpdated, type: String
  field :developer, type: String
  field :website, type: String
  field :ofReviews, type: String
  field :ofReviewsCurrent, type: String
  field :starts, type: String
  field :startsCurrent, type: String
  field :version, type: String
end
