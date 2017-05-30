json.extract! product, :id, :name, :expiration, :price, :latitude, :long, :created_at, :updated_at
json.url product_url(product, format: :json)
