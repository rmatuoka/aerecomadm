class CreateCaseImages < ActiveRecord::Migration
  def self.up
    create_table :case_images do |t|
      t.integer :case_id
      t.integer :published

      t.timestamps
    end
  end

  def self.down
    drop_table :case_images
  end
end
