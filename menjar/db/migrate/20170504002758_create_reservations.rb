class CreateReservations < ActiveRecord::Migration[5.0]
  def change
    create_table :reservations do |t|
      t.integer :amount
      t.text :description
      t.datetime :limit_date
      t.string :date_reservation
      t.string :datetime
      t.references :provider_id, foreign_key: true
      t.references :consumer_id, foreign_key: true

      t.timestamps
    end
  end
end
