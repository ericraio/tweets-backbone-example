source 'https://rubygems.org'

gem 'rails', '4.0.0'
gem 'uglifier', '>= 1.3.0'
gem 'jquery-rails'
gem 'backbone-on-rails'
gem 'coffee-rails'
gem "therubyracer"
gem "less-rails"
gem "twitter-bootstrap-rails"

group :production do
  gem 'pg'
end

group :development, :test do
  gem 'sqlite3'
  gem 'capybara'
  gem 'database_cleaner'
  gem 'cucumber'
  gem 'rspec-rails'
  gem 'jasminerice', :git => 'https://github.com/bradphelan/jasminerice.git'
  gem 'poltergeist'
end

group :development do
  gem 'guard'
  gem 'guard-jasmine'
  gem 'guard-cucumber'
  gem 'guard-rspec'
  gem 'guard-rails'
end

group :test do
  gem 'cucumber-rails', :require => false
  gem "shoulda-matchers"
end

