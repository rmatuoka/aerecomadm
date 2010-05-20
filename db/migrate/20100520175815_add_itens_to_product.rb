class AddItensToProduct < ActiveRecord::Migration
  def self.up
    add_column :products, :code, :string
    add_column :products, :compatibility, :string
    add_column :products, :color, :string
    add_column :products, :rendimento, :string
  end

  def self.down
    remove_column :products, :rendimento
    remove_column :products, :color
    remove_column :products, :compatibility
    remove_column :products, :code
  end
end
