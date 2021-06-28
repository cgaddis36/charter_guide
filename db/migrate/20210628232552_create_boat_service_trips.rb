class CreateBoatServiceTrips < ActiveRecord::Migration[5.2]
  def change
    create_table :boat_service_trips do |t|
      t.references :boat_service, foreign_key: true
      t.references :trip, foreign_key: true

      t.timestamps
    end
  end
end
