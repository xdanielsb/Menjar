class AddProviderIdToDonations < ActiveRecord::Migration[5.0]
  def change
    add_reference :donations, :provider, foreign_key: true
  end
end
