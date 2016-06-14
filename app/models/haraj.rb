class Haraj < ActiveRecord::Base
  attr_accessible :url, :guid, :created_at, :updated_at, :ID, :address, :city, :contact, :description, :memberName, :number, :subject, :time, :title, :url_from, :pictures, :section

  default_scope order("#{self.table_name}.created_at DESC")
end





