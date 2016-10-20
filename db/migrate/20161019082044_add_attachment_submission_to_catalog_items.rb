class AddAttachmentSubmissionToCatalogItems < ActiveRecord::Migration
  def self.up
    change_table :catalog_items do |t|
      t.attachment :submission
    end
  end

  def self.down
    remove_attachment :catalog_items, :submission
  end
end
