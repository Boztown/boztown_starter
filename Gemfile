source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.1.0'

# Use mysql as the database for Active Record
gem 'mysql2'

# HAML keeps me happy
gem 'haml'
gem 'haml-rails'

# User authentication
gem 'devise'
 
# CanCanCan (continuation of CanCan) for user roles
gem 'cancancan', '~> 1.7'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.0'

# Compass for good measure
gem 'compass-rails'

# Generate bootstrappy scaffolds
gem 'bootstrap-generators', '~> 3.1.1'

# Bootstrap SASS version
gem 'bootstrap-sass', '~> 3.1.1'

# Pagination + Bootstrap styles/mark-up for pagination.
gem 'kaminari'
gem 'kaminari-bootstrap', '~> 3.0.1'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'

# Chronic for wicked time formatting
gem 'chronic'

# For sorting columns (on tables and such)
gem 'handles_sortable_columns'

# For uploads
gem 'carrierwave'

# for Rake based user input
gem 'highline'

gem 'bootbox-rails', '~>0.3'

# Need rMagick do to thumbnail resizing through CarrierWave but it requires ImageMagick and can be a pain.  
# I'll leave it commented out for now.
#gem 'rmagick', '2.13.2'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.2'

# Provides a framework for saving incoming blank values as nil in the database 
# in instances where you'd rather use DB NULL than simply a blank string. 
gem "nilify_blanks"

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

# Use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.1.2'

# Use unicorn as the app server
# gem 'unicorn'

#Use Capistrano for deployment
group :development do
  gem 'spring'
  gem "better_errors"
  gem "binding_of_caller"
  gem 'capistrano'
  gem 'capistrano-rails', '~> 1.1'
end


#Use debugger
gem 'debugger', group: [:development, :test]
