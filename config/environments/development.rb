Hummingbird::Application.configure do
  routes.default_url_options = {host: 'localhost', port: 3000}
  # Settings specified here will take precedence over those in config/application.rb

  config.paperclip_defaults = {
    storage: :filesystem,
    url: '/uploads/:class/:attachment/:id_partition/:style/:filename',
    path: "#{Rails.root}/public/uploads/:class/:attachment/:id_partition/:style/:filename"
  }

  # In the development environment your application's code is reloaded on
  # every request. This slows down response time but is perfect for development
  # since you don't have to restart the web server when you make code changes.
  config.cache_classes = false
  config.eager_load = false

  # Show full error reports and disable caching
  config.consider_all_requests_local       = true
  config.action_controller.perform_caching = false

  # Don't care if the mailer can't send
  config.action_mailer.raise_delivery_errors = false

  # Other mailer options
  config.action_mailer.default_url_options = { :host => 'localhost:3000' }
  config.action_mailer.delivery_method = :letter_opener

  # Print deprecation notices to the Rails logger
  config.active_support.deprecation = :log

  # Only use best-standards-support built into browsers
  config.action_dispatch.best_standards_support = :builtin

  # Do not compress assets
  config.assets.compress = false

  # Expands the lines which load the assets
  config.assets.debug = true
  config.ember.variant = :development

  # LiveReload
  config.middleware.insert_after(ActionDispatch::Static, Rack::LiveReload)

  # Caching
  # Temporarily enable caching in development (COMMENT OUT WHEN DONE!)
  #config.action_controller.perform_caching = true
  #config.cache_store = :redis_store

  config.react.variant = :development
  config.react.addons = true
end

