class CreateCharities < ActiveRecord::Migration[5.0]
  def change
    create_table :charities do |t|
      t.string :name
      t.string :adress
      t.string :phone
      t.text :description

      t.timestamps
    end
  end
end
