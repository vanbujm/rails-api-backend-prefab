class CreateDogNames < ActiveRecord::Migration
  def change
    create_table :dog_names do |t|
      t.string :name
      t.integer :dog_id

      t.timestamps null: false
    end
  end
end
