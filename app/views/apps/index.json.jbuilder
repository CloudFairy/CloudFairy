json.array!(@apps) do |app|
  json.extract! app, :id, :user_id, :name, :server_ip, :server_user
  json.url app_url(app, format: :json)
end
