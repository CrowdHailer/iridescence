source "https://rubygems.org"

ruby '2.2.0'


gem 'dotenv'
gem 'awesome_print'
gem 'sass'

gem 'thin' # Web server
gem 'shotgun' # Automatic reloading of Rack based applications
gem 'scorched'

gem 'rack_csrf', :require => 'rack/csrf' # Security middleware

gem 'mail' # Handle sending emails - optional

gem 'pg'
gem 'sequel'
gem 'errol', :git => 'https://github.com/CrowdHailer/Errol.git', :branch => 'master'

gem 'bcrypt'

group :test do
  gem 'factory_girl'
  gem 'rack-test', :require => 'rack/test'
  gem 'minitest', :require => 'minitest/autorun'
  gem 'minitest-reporters'
end
