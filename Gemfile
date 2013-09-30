source 'https://rubygems.org'

ruby '2.0.0'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.0'
gem 'uglifier', '>= 1.3.0'
gem 'jquery-rails'
gem 'turbolinks'
gem 'mongoid', '~> 4', github: 'mongoid/mongoid'
gem 'bson_ext'
gem 'jbuilder'
#gem 'devise'

group :staging, :production do
  gem 'unicorn'
  gem 'rails_12factor', group: :production
end

group :development, :test do
end

group :test do
  gem 'factory_girl_rails'
  gem 'faker'
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
