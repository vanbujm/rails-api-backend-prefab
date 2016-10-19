class License < ActiveRecord::Base
  belongs_to :catalog_item
end
