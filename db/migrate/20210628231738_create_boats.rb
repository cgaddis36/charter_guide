class CreateBoats < ActiveRecord::Migration[5.2]
  def change
    create_table :boats do |t|
      t.string :name
      t.references :owner, foreign_key: true

      t.timestamps
    end
  end
end
