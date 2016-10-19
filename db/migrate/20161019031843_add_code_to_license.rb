class AddCodeToLicense < ActiveRecord::Migration
  def change
    add_column :licenses, :code, :string
  end
end
