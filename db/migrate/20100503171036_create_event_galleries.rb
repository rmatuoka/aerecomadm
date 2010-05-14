class CreateEventGalleries < ActiveRecord::Migration
  def self.up
    create_table :event_galleries do |t|
      t.integer :event_id
      t.string :title
      t.integer :published

      t.timestamps
    end
  end

  def self.down
    drop_table :event_galleries
  end
end
