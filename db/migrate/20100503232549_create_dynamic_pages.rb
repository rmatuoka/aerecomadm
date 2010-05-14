class CreateDynamicPages < ActiveRecord::Migration
  def self.up
    create_table :dynamic_pages do |t|
      t.string :title
      t.text :body

      t.timestamps
    end
  end

  def self.down
    drop_table :dynamic_pages
  end
end
