json.extract! new_user, :id, :name, :email, :phone_number, :profile_photo, :created_at, :updated_at
json.url new_user_url(new_user, format: :json)
