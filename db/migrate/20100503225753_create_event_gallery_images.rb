class CreateEventGalleryImages < ActiveRecord::Migration
  def self.up
    create_table :event_gallery_images do |t|
      t.integer :event_gallery_id
      t.string :title

      t.timestamps
    end
  end

  def self.down
    drop_table :event_gallery_images
  end
end
