class CreateNoticeImages < ActiveRecord::Migration
  def self.up
    create_table :notice_images do |t|
      t.string :title
      t.string :legend
      t.integer :published

      t.timestamps
    end
  end

  def self.down
    drop_table :notice_images
  end
end
