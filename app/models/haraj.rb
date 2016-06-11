class Haraj
  include Mongoid::Document

  field :guid, type: String
  field :url, type: String

  field :ID, type: String
  field :city, type: String
  field :time, type: String
  field :title, type: String
  field :pictures, type: Array
  field :subject, type: String
  field :contact, type: String
  field :number, type: String

  # cache form where, such as opensooq,mstaml.(WebsiteTypes variable)
  field :url_from, type: String

  field :address, type: String
  field :memberName, type: String
  field :description, type: String
  field :section, type: Array

end
