class CreateSitecontacts < ActiveRecord::Migration
  def self.up
    create_table :sitecontacts do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :company
      t.text :message

      t.timestamps
    end
  end

  def self.down
    drop_table :sitecontacts
  end
end
