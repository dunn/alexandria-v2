source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.0'
# Use sqlite3 as the database for Active Record
gem 'sqlite3'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

gem 'hydra-head', '~> 9.0.0.rc2'
# gem "active-fedora", "~> 9.0.0.rc2"
gem "active-fedora", github: 'projecthydra/active_fedora'
# gem 'hydra-editor', '~> 1.0.0.rc2'
gem 'hydra-editor', github: 'projecthydra-labs/hydra-editor'
# gem 'hydra-editor', path: '../hydra-editor'
gem 'hydra-role-management'
gem "hydra-collections", "~> 4.0.0.rc2"
gem 'active-triples', github: 'ActiveTriples/ActiveTriples'
# gem 'hydra-derivatives', '~> 1.0.0.beta1'

gem 'mods', '~> 1.0.0'
gem 'oargun', github: 'curationexperts/oargun'
gem 'blacklight-gallery'
gem 'riiif'

# Version 1.1.7 has this bug: https://github.com/ruby-rdf/rdf/issues/167
gem 'rdf', github: 'ruby-rdf/rdf', ref: '1d65a2ff844ab4b004b393478b1506c8dd2a3d0a'

gem 'devise'
gem 'devise-guests', '~> 0.3'
group :development, :test do
  gem 'rspec-rails'
  gem 'factory_girl_rails', '~> 4.4'
  gem 'jettywrapper'
  # gem 'http_logger'
  gem 'capybara'
  gem 'byebug'

  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end
