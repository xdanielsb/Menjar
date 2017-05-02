json.extract! donation, :id, :description, :state, :date, :created_at, :updated_at
json.url donation_url(donation, format: :json)
