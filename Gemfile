source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.4.2'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.2.1'
gem 'bcrypt', '3.1.7'
gem 'faker', '~> 2.5'
gem 'will_paginate', '~> 3.1', '>= 3.1.8'
gem 'bootstrap-will_paginate', '~> 1.0'
gem 'bootstrap-sass', '~> 3.4', '>= 3.4.1'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'mini_racer', platforms: :ruby
gem 'rails-controller-testing', '~> 1.0', '>= 1.0.4'

# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '>= 2.3.0'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'

gem 'jquery-rails', '>= 4.0.3'
gem 'sdoc', '>= 0.4.0', group: :doc

# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use ActiveStorage variant
# gem 'mini_magick', '~> 4.8'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.1.0', require: false

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  # Use sqlite3 as the database for Active Record
  #gem 'sqlite3'
  gem 'pg', '~> 1.1', '>= 1.1.4'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'awesome_print', '~> 1.8'
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'dotenv-rails', '~> 2.7', '>= 2.7.5'
end

group :test do
  gem 'minitest-reporters', '>= 1.0.5'
  gem 'mini_backtrace', '>=0.1.3'
  gem 'guard-minitest', '2.3.1'
  gem 'selenium-webdriver', '~> 3.142', '>= 3.142.6'
end

group :production do
  gem 'rails_12factor', '>= 0.0.2'
  gem 'puma', '~> 3.12'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
