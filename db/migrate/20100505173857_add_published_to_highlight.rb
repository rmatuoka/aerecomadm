class AddPublishedToHighlight < ActiveRecord::Migration
  def self.up
    add_column :highlights, :published, :integer
  end

  def self.down
    remove_column :highlights, :published
  end
end
