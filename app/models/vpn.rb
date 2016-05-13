class Vpn
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name, type: String
  field :vpnid, type: String
end
