class CreateLicenses < ActiveRecord::Migration
  def change
    create_table :licenses do |t|
      t.integer :catalog_item_id

      t.timestamps null: false
    end
  end
end
