# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

# Configuration for using SendGrid on Heroku
ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
	:address        => 'smtp.googlemail.com',
	:port           => 587,
	:authentication => :plain,
	:user_name      => 'pety7439@gmail.com',
	:password       => 'kretenps7439',
	:domain         => 'herokuapp.com',
	:enable_starttls_auto => true
}
