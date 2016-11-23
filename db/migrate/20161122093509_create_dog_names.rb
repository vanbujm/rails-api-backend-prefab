class CreateDogNames < ActiveRecord::Migration
  def change
    create_table :dog_names do |t|
      t.string :name, :unique => true

      t.timestamps null: false
    end
  end
end
