class CreateTunes < ActiveRecord::Migration
  def change
    create_table :tunes do |t|
      t.string :title
      t.string :composer
      t.string :key
      t.string :meter
      t.string :tune_type
      t.integer :collection_id

      t.timestamps
    end
  end
end
