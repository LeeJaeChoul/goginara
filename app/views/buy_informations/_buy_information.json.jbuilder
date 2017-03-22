json.extract! buy_information, :id, :user, :address, :phonenumber, :email, :requirement, :created_at, :updated_at
json.url buy_information_url(buy_information, format: :json)