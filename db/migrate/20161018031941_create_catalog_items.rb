class CreateCatalogItems < ActiveRecord::Migration
  def change
    create_table :catalog_items do |t|
      t.string :creator
      t.string :mediaType
      t.string :name
      t.datetime :creationDate
      t.integer :copies

      t.timestamps null: false
    end
  end
end
