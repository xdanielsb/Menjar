class Reservation < ApplicationRecord
  belongs_to :provider_id
  belongs_to :consumer_id
end
