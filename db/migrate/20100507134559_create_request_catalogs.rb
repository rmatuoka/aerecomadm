class CreateRequestCatalogs < ActiveRecord::Migration
  def self.up
    create_table :request_catalogs do |t|
      t.string :name
      t.string :email
      t.string :address
      t.string :number
      t.string :postalcode
      t.string :city
      t.string :state

      t.timestamps
    end
  end

  def self.down
    drop_table :request_catalogs
  end
end
