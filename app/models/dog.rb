class Dog < ActiveRecord::Base
  has_many :dog_dog_names, :dependent => :destroy
  has_many :dog_names, through: :dog_dog_names

  accepts_nested_attributes_for :dog_dog_names, allow_destroy: true
  accepts_nested_attributes_for :dog_names, allow_destroy: true
end
