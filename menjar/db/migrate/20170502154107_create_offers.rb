class CreateOffers < ActiveRecord::Migration[5.0]
  def change
    create_table :offers do |t|
      t.integer :amount
      t.string :name

      t.timestamps
    end
  end
end
