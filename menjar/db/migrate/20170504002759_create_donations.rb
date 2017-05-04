class CreateDonations < ActiveRecord::Migration[5.0]
  def change
    create_table :donations do |t|
      t.text :description
      t.string :state
      t.datetime :date

      t.timestamps
    end
  end
end
