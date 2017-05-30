class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name
      t.datetime :expiration
      t.integer :price
      t.float :latitude
      t.float :long

      t.timestamps
    end
  end
end
