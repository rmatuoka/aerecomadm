class CreateProductImages < ActiveRecord::Migration
  def self.up
    create_table :product_images do |t|
      t.integer :product_id
      t.string :title
      t.string :legend
      t.integer :published

      t.timestamps
    end
  end

  def self.down
    drop_table :product_images
  end
end
