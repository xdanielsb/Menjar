json.extract! charity, :id, :name, :adress, :phone, :description, :created_at, :updated_at
json.url charity_url(charity, format: :json)
