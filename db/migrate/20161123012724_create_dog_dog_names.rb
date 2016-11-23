class CreateDogDogNames < ActiveRecord::Migration
  def change
    create_table :dog_dog_names do |t|
      t.integer :dog_id
      t.integer :dog_name_id
      t.timestamps null: false
    end
  end
end
