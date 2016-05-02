class Socialmedium
  include Mongoid::Document
  field :facebook, type: String
  field :twitter, type: String
  field :google, type: String
  field :linkedin, type: String
  field :ofFacebookLikes, type: String
end
