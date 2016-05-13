class Type
  include Mongoid::Document
  include Mongoid::Timestamps

  field :cat_id, type: String
  field :title, type: String
  field :key, type: String
  field :value, type: String
  field :description, type: String


  def self.find_by_cat_title(title)
    _froms = []
    _cat = Cat.find_by_title(title)
    if _cat
      _froms = self.where(cat_id: /#{_cat._id}/)
    end

    _froms
  end
end
