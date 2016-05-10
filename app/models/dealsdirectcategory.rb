class Dealsdirectcategory
  include Mongoid::Document
  include Mongoid::Timestamps

  field :title, type: String
  field :href, type: String
  field :data_category_id, type: String
  field :data_cid, type: String
end
