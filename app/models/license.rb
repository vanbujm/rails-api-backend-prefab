class License < ActiveRecord::Base
  validates :code,  presence: true
  belongs_to :catalog_item
end
