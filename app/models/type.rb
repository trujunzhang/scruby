class Type
  include Mongoid::Document
  field :cat_id, type: String
  field :title, type: String
  field :key, type: String
  field :value, type: String
  field :description, type: String
end
