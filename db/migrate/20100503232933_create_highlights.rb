class CreateHighlights < ActiveRecord::Migration
  def self.up
    create_table :highlights do |t|
      t.string :title
      t.string :link
      t.integer :position
      t.integer :order

      t.timestamps
    end
  end

  def self.down
    drop_table :highlights
  end
end
