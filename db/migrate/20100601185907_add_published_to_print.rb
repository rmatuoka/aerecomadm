class AddPublishedToPrint < ActiveRecord::Migration
  def self.up
    add_column :prints, :published, :integer
  end

  def self.down
    remove_column :prints, :published
  end
end
