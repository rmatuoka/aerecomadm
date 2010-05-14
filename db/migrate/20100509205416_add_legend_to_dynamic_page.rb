class AddLegendToDynamicPage < ActiveRecord::Migration
  def self.up
    add_column :dynamic_pages, :legend, :string
  end

  def self.down
    remove_column :dynamic_pages, :legend
  end
end
