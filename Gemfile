source 'https://rubygems.org'

ruby '2.0.0'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.0'
gem 'uglifier', '>= 1.3.0'
gem 'jquery-rails'
gem 'turbolinks'
gem 'turbolinks-redirect'
gem 'mongoid', '~> 4', github: 'mongoid/mongoid'
gem 'bson_ext'
gem 'omniauth-facebook'
gem 'jbuilder'
gem 'devise'
gem "devise-async"
gem 'asset_sync'

group :staging, :production do
  gem 'unicorn'
  gem 'rails_12factor', group: :production
end

group :development, :test do
  gem 'rspec-rails'
  gem 'factory_girl_rails'
  gem 'guard-jasmine'
  gem "jasminerice", :git => 'https://github.com/bradphelan/jasminerice.git'
  gem 'jasmine-jquery-rails'
end

group :test do
  gem 'faker'
  gem 'capybara'
  gem 'guard-rspec'
  gem 'launchy'
  gem 'simplecov'
  gem 'database_cleaner'
  gem 'rspec-rails'
  gem 'rspec-nc'
  gem 'autotest'
  gem 'database_cleaner'
  gem 'mongoid-rspec', '>= 1.6.0', github: 'evansagge/mongoid-rspec'
end
