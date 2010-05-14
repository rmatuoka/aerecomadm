class AddNoticeIdToNotices < ActiveRecord::Migration
  def self.up
    add_column :notice_images, :notice_id, :integer
  end

  def self.down
    remove_column :notice_images, :notice_id
  end
end
