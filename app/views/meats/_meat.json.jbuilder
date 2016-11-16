json.extract! meat, :id, :category_id, :user_id, :title, :maker, :origin, :weight, :life, :price, :created_at, :updated_at
json.url meat_url(meat, format: :json)