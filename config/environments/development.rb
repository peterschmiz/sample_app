Rails.application.configure do
  config.cache_classes = false

  config.eager_load = false

  config.consider_all_requests_local       = true

  config.action_controller.perform_caching = false

  config.active_support.deprecation = :log
  config.active_record.migration_error = :page_load

  config.assets.debug = true
  config.assets.digest = true
  config.assets.raise_runtime_errors = true

  config.action_mailer.raise_delivery_errors = true
  config.action_mailer.perform_deliveries = true
  config.action_mailer.delivery_method = :smtp
  host = 'localhost:3000'
  config.action_mailer.default_url_options = { host: host }

  ActionMailer::Base.smtp_settings = {
	  :address        => 'smtp.googlemail.com',
	  :port           => 587,
	  :authentication => :plain,
	  :user_name      => 'pety7439',
	  :password       => 'kretenps7439',
	  :domain         => 'localhost:3000',
	  :enable_starttls_auto => true
  }
end
