class AddPublishedToEventGalleryImage < ActiveRecord::Migration
  def self.up
    add_column :event_gallery_images, :published, :integer
  end

  def self.down
    remove_column :event_gallery_images, :published
  end
end
