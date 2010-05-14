class CreateHeaders < ActiveRecord::Migration
  def self.up
    create_table :headers do |t|
      t.string :title
      t.integer :dynamic_page_id
      t.integer :published

      t.timestamps
    end
  end

  def self.down
    drop_table :headers
  end
end
