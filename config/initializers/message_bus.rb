MessageBus.long_polling_enabled = true
MessageBus.long_polling_interval = 16000

MessageBus.redis_config = {
  host: ENV['REDIS_HOST']
}

MessageBus.user_id_lookup do |env|
  auth_token = Rack::Request.new(env).cookies["auth_token"]
  if auth_token
    User.find_by(authentication_token: auth_token).try(:id)
  else
    nil
  end
end
