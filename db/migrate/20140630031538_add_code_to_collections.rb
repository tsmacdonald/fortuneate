class AddCodeToCollections < ActiveRecord::Migration
  def change
    add_column :collections, :code, :string
  end
end
