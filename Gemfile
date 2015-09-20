source 'https://rubygems.org'

ruby '2.2.3'

gem 'rails', '4.2.4'

gem 'activeadmin', github: 'activeadmin/activeadmin'
gem 'api_cache'
gem 'coffee-rails', '~> 4.1.0'
gem 'devise'
gem 'faker'
gem 'figaro'
gem 'foundation-icons-sass-rails'
gem 'foundation-rails'
gem 'haml-rails'
gem 'jbuilder', '~> 2.0'
gem 'jquery-rails'
gem 'newrelic_rpm'
gem 'omniauth-github'
gem 'reform'
gem 'sass-rails', '~> 5.0'
gem 'seedbank'
# gem 'sdoc', '~> 0.4.0', group: :doc
gem 'simple_form'
gem 'turbolinks'
gem 'uglifier', '>= 1.3.0'
gem 'virtus'

group :development do
  platforms :mri do
    gem 'better_errors'
    gem 'binding_of_caller'
  end
  gem 'awesome_print'
  gem 'bullet'
  gem 'guard'
  gem 'i18n-tasks'
  # gem 'spring'
  # gem 'web-console', '~> 2.0'
end

group :development, :test do
  gem 'guard-reek', github: 'yld/guard-reek'
  gem 'pry-byebug'
  gem 'rspec-rails'
  gem 'sqlite3'
end

group :production do
  gem 'rails_12factor'
  gem 'pg'
  gem 'thin'
end

group :test do
  gem 'codeclimate-test-reporter', require: nil
  gem 'capybara'
  gem 'database_cleaner'
  gem 'factory_girl_rails'
  gem 'guard-rspec'
  gem 'guard-rubocop'
  # gem 'guard-spork'
  gem 'rspec-expectations', require: 'rspec/expectations'
  gem 'simplecov', require: false
end
