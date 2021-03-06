Rails.application.configure do

  config.cache_classes = true
  config.eager_load = true
  config.consider_all_requests_local       = false
  config.action_controller.perform_caching = true
  config.serve_static_assets = false

  config.assets.js_compressor = :uglifier
  config.assets.compile = false
  config.assets.digest = true

  config.force_ssl = true
  config.i18n.fallbacks = true
  config.active_support.deprecation = :notify
  config.log_formatter = ::Logger::Formatter.new
  config.active_record.dump_schema_after_migration = false

  host = 'flow-sample-app.herokuapp.com'
  config.action_mailer.default_url_options = { host: host }
  config.action_mailer.raise_delivery_errors = false
  config.action_mailer.perform_deliveries = true
  config.action_mailer.delivery_method = :smtp

  ActionMailer::Base.smtp_settings = {
	  :address        => 'smtp.googlemail.com',
	  :port           => 587,
	  :authentication => :plain,
	  :user_name      => ENV['GMAIL_USERNAME'],
	  :password       => ENV['GMAIL_PASSWORD'],
	  :domain         => 'heroku.com',
	  :enable_starttls_auto => true
  }
end
