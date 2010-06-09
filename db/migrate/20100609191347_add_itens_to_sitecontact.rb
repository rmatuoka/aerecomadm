class AddItensToSitecontact < ActiveRecord::Migration
  def self.up
    add_column :sitecontacts, :motivo, :string
  end

  def self.down
    remove_column :sitecontacts, :motivo
  end
end
