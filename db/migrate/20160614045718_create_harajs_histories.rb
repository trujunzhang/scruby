class CreateHarajsHistories < ActiveRecord::Migration
  def change
    create_table :harajs_histories do |t|
      t.string :url
      t.string :guid
      t.string :created_at
      t.string :ID

      t.timestamps
    end
  end
end
