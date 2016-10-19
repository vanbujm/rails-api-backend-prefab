class CatalogItem < ActiveRecord::Base
  validates :creator,  presence: true
  validates :mediaType,  presence: true
  validates :name,  presence: true
  validates :creationDate,  presence: true
  validates :copies,  presence: true
  has_many :licenses
end