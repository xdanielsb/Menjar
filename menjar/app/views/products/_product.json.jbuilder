json.extract! product, :id, :name, :expiration, :created_at, :updated_at
json.url product_url(product, format: :json)