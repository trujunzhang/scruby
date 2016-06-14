class HarajsCache < ActiveRecord::Base
  self.table_name="harajs_caches"

  attr_accessible :ID, :created_at, :guid, :url, :url_from
end
