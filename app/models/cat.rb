class Cat
  include Mongoid::Document
  include Mongoid::Timestamps

  field :title, type: String
  field :description, type: String

  def self.find_by_title(_title)
    self.find_by({title: /#{_title}/i})
  end
end
