class AddConsumerIdToReservations < ActiveRecord::Migration[5.0]
  def change
    add_reference :reservations, :consumer, foreign_key: true
  end
end
