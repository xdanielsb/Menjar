class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name
      t.datetime :expiration

      t.timestamps
    end
  end
end
