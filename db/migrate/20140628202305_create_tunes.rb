class CreateTunes < ActiveRecord::Migration
  def change
    create_table :tunes do |t|
      t.integer :collection_id
      t.string :title
      t.string :key
      t.string :bass_type
      t.string :tune_type
      t.integer :variation_count
      t.integer :treble_part_count
      t.integer :movement_count
      t.string :key
      t.string :meter
      t.string :composer

      t.timestamps
    end
  end
end
