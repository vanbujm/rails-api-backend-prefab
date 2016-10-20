class CatalogItem < ActiveRecord::Base
  validates :creator,  presence: true
  validates :mediaType,  presence: true
  validates :name,  presence: true
  validates :creationDate,  presence: true
  validates :copies,  presence: true
  has_many :licenses
  has_attached_file :submission
  validates_attachment :submission,
                       content_type: { content_type: ["image/jpeg", "image/gif", "image/png", "application/pdf"] }
  validates_attachment_file_name :submission, matches: [/png\z/, /jpe?g\z/, /gif\z/, /pdf\z/]
end