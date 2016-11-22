class CreateDogs < ActiveRecord::Migration
  def change
    create_table :dogs do |t|
      t.string :breed
      t.integer :age
      t.integer :catalog_item_id

      t.timestamps null: false
    end
  end
end
