json.extract! user, :id, :username, :fullname, :email, :city, :birthdate, :gender, :status, :coins, :created_at, :updated_at
json.url user_url(user, format: :json)
