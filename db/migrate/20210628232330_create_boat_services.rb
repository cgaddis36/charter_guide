class CreateBoatServices < ActiveRecord::Migration[5.2]
  def change
    create_table :boat_services do |t|
      t.float :price
      t.references :boat, foreign_key: true
      t.references :service, foreign_key: true

      t.timestamps
    end
  end
end
