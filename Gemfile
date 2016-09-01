source 'https://rubygems.org'

ruby '2.3.1'

gem 'rails', '~> 4.0'
gem 'pg'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.1.0'
gem 'jquery-rails'
gem 'jbuilder', '~> 2.0'

gem 'puma'

# Security
group :development do
  gem 'brakeman', require: false
  gem 'bundler-audit', require: false
  gem 'rubocop', require: false
end

# Admin
gem 'activeadmin', '= 1.0.0.pre4'
gem 'devise'
gem 'ckeditor'

# Http client
gem 'faraday'
gem 'faraday_middleware'

# API
gem 'virtus'
gem 'active_model_serializers'
gem 'rack-cors'

# Caching
gem 'actionpack-action_caching'
gem 'memcachier'
gem 'dalli'

# Heroku hosting
gem 'rails_12factor', group: :production
gem 'newrelic_rpm', group: :production

# Background jobs
gem 'sidekiq'
gem 'sidekiq-cron'
gem 'sidekiq-history'
gem 'sidekiq-statistic'
gem 'sidekiq-unique-jobs'
gem 'sinatra', :require => nil

group :development, :test do
  gem 'pry-byebug'
  gem 'pry-rails'

  gem 'rspec-rails'
  gem 'shoulda-matchers', '~> 3.0'
  gem 'factory_girl_rails'
end

group :development do
  gem 'web-console', '~> 2.0'

  gem 'guard-rspec', require: false
  gem 'guard-rails', require: false
  gem 'guard-process', require: false
end
