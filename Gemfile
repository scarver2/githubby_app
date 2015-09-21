source 'https://rubygems.org'

ruby '2.2.3'

gem 'rails', '4.2.4'

gem 'activeadmin', github: 'activeadmin/activeadmin'
gem 'api_cache'
gem 'coffee-rails', '~> 4.1.0'
gem 'devise'
gem 'draper'
gem 'faker'
gem 'figaro'
gem 'foundation-icons-sass-rails'
gem 'foundation-rails'
gem 'foundation_rails_helper'
gem 'haml-rails'
gem 'httparty'
gem 'jbuilder', '~> 2.0'
gem 'jquery-rails'
gem 'newrelic_rpm'
gem 'omniauth-github'
gem 'sass-rails', '~> 5.0'
gem 'seedbank'
gem 'simple_form'
gem 'uglifier', '>= 1.3.0'

group :development do
  platforms :mri do
    gem 'better_errors'
    gem 'binding_of_caller'
  end
  gem 'awesome_print'
  gem 'bullet'
  gem 'guard'
  gem 'i18n-tasks'
end

group :development, :test do
  gem 'guard-reek', github: 'yld/guard-reek'
  gem 'pry-byebug'
  gem 'quiet_assets'
  gem 'rspec-rails'
  gem 'sqlite3'
end

group :production do
  # gem 'dalli'
  # gem 'kgio' # performance for Dalli
  gem 'passenger'
  gem 'pg'
  gem 'rails_12factor'
end

group :test do
  gem 'codeclimate-test-reporter', require: nil
  gem 'capybara'
  gem 'database_cleaner'
  gem 'factory_girl_rails'
  gem 'guard-rspec'
  gem 'guard-rubocop'
  gem 'rspec-expectations', require: 'rspec/expectations'
  gem 'simplecov', require: false
end
