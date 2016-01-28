json.array!(@users) do |user|
  json.extract! user, :id, :mobile, :email, :name, :transaction_id
  json.url user_url(user, format: :json)
end
