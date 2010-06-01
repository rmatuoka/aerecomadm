class AddTypeToProduct < ActiveRecord::Migration
  def self.up
    add_column :products, :tipo, :string
  end

  def self.down
    remove_column :products, :tipo
  end
end
