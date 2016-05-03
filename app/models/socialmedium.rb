class Socialmedium
  include Mongoid::Document
  include Mongoid::Timestamps

  field :facebook, type: String
  field :twitter, type: String
  field :google, type: String
  field :linkedin, type: String
  field :ofFacebookLikes, type: String
end
