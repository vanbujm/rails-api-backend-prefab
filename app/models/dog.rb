class Dog < ActiveRecord::Base
  has_many :dog_names
  belongs_to :catalog_item
  accepts_nested_attributes_for :dog_names
end
