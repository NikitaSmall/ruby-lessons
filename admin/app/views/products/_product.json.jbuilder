json.extract! product, :id, :title, :desc, :price, :created_at, :updated_at
json.url product_url(product, format: :json)
