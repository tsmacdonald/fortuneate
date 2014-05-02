class CreateCollections < ActiveRecord::Migration
  def change
    create_table :collections do |t|
      t.string :title
      t.string :collector
      t.integer :publication_year

      t.timestamps
    end
  end
end
