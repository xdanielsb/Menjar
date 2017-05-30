class CreateOffers < ActiveRecord::Migration[5.0]
  def change
    create_table :offers do |t|
      t.integer :amount
      t.string :name
      t.references :product_id, foreign_key: true
      t.references :provider_id, foreign_key: true

      t.timestamps
    end
  end
end
