class CreateScheduleVisits < ActiveRecord::Migration
  def self.up
    create_table :schedule_visits do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :adress
      t.string :number
      t.string :postalcode
      t.string :city
      t.string :state

      t.timestamps
    end
  end

  def self.down
    drop_table :schedule_visits
  end
end
