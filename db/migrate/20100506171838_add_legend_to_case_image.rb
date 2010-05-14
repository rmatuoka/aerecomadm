class AddLegendToCaseImage < ActiveRecord::Migration
  def self.up
    add_column :case_images, :title, :string
    add_column :case_images, :legend, :string
  end

  def self.down
    remove_column :case_images, :title
    remove_column :case_images, :legend
  end
end
