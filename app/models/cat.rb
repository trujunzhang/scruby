class Cat
  include Mongoid::Document
  include Mongoid::Timestamps

  field :title, type: String
  field :description, type: String

  def self.find_by_title(_title)
    self.where(title: /#{_title}/i)
  end
end
