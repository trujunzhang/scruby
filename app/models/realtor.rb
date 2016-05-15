class Realtor
  include Mongoid::Document
  field :href, type: String
  field :guid, type: String
  field :images, type: List
  field :address, type: String
  field :price, type: String
  field :listing_id, type: String
  field :property_type, type: String
  field :land_size, type: String
  field :built_in, type: String
  field :Info_name, type: String
  field :Info_phone, type: String
  field :Info_email, type: String
  field :description, type: String
end
