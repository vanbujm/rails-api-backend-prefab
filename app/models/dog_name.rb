class DogName < ActiveRecord::Base
  has_many :dog_dog_names, :dependent => :destroy
  has_many :dogs, through: :dog_dog_names

  accepts_nested_attributes_for :dog_dog_names, allow_destroy: true
  accepts_nested_attributes_for :dogs, allow_destroy: true

  before_save :titlecase_fields

  validates :name, uniqueness: {:case_sensitive => false}

  private
  def titlecase_fields
    self.name = self.name.downcase.titlecase
  end
end
