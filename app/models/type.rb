class Type
  include Mongoid::Document
  include Mongoid::Timestamps

  field :cat_id, type: String
  field :title, type: String
  field :key, type: String
  field :value, type: String
  field :description, type: String


  def self.find_by_cat_id(_cat_id)
    self.where(cat_id: /#{_cat_id}/)
  end
end
