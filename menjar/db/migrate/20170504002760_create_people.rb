class CreatePeople < ActiveRecord::Migration[5.0]
  def change
    create_table :people do |t|
      t.string :cedula
      t.string :name
      t.datetime :born_date
      t.string :nationality
      t.references :provider_id, foreign_key: true

      t.timestamps
    end
  end
end
