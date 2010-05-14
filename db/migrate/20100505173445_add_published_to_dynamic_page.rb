class AddPublishedToDynamicPage < ActiveRecord::Migration
  def self.up
    add_column :dynamic_pages, :published, :integer
  end

  def self.down
    remove_column :dynamic_pages, :published
  end
end
