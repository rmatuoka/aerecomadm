class CreatePrints < ActiveRecord::Migration
  def self.up
    create_table :prints do |t|
      t.string :title
      t.string :summary
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :prints
  end
end
