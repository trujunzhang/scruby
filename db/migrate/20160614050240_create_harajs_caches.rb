class CreateHarajsCaches < ActiveRecord::Migration
  def change
    create_table :harajs_caches do |t|
      t.string :url
      t.string :guid
      t.string :created_at
      t.string :ID
      t.string :url_from

      t.timestamps null: false
    end
  end
end
