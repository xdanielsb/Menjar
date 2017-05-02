class AddProviderIdToReservations < ActiveRecord::Migration[5.0]
  def change
    add_reference :reservations, :provider, foreign_key: true
  end
end
