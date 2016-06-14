source 'https://rubygems.org'
ruby '2.0.0'
gem 'rails', '3.2.14'
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
end

gem 'mysql2', '0.3.18'

gem 'lodash-rails'
gem 'font-awesome-sass', '~> 4.5.0'
gem 'animate.css-rails', '~> 3.2.0'

gem 'owlcarousel-rails'

gem 'bootstrap-sass', '~> 3.2.0'
gem 'autoprefixer-rails'
gem 'will_paginate-bootstrap'
gem 'bootstrap-datepicker-rails'
gem 'devise-bootstrap-views'

gem 'axlsx'

gem 'jquery-rails'
gem 'devise'
gem 'figaro'

gem 'mongoid'
gem "bson_ext"

gem 'tinymce-rails'

group :development do
  gem 'better_errors'
  gem 'binding_of_caller', :platforms=>[:mri_19, :mri_20, :rbx]
  gem 'quiet_assets'

  gem 'capistrano', '~> 3.4.0'
  gem 'capistrano-rails', '~> 1.1.3'
  gem 'capistrano-passenger', '~> 0.2.0'
  gem 'capistrano-rvm', '~> 0.1.2'
end
gem 'puma'
group :development, :test do
  gem 'factory_girl_rails'
  gem 'rspec-rails'
end
group :production do
  gem 'unicorn'
end
group :test do
  gem 'capybara'
  gem 'cucumber-rails', :require=>false
  gem 'database_cleaner', '1.0.1'
  gem 'email_spec'
  gem 'launchy'
  gem 'mongoid-rspec'
end
