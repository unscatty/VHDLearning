source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.10'
# Use sqlite3 as the database for Active Record
# gem 'sqlite3'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# To use Slim when generating views
gem 'slim-rails'
# Adds config YAML files for global-use on app
gem 'config'
# For sign-up, sign-in, email confirmation and more
gem 'devise'
# For multi-lingual devise messages
gem 'devise-i18n'
# For use of the OAuth protocol
gem 'omniauth'
# Omniauth for OAuth2 version
gem 'omniauth-oauth2'
# Omniauth Facebook provider
gem 'omniauth-facebook'
# Omniauth GitHub provider
gem 'omniauth-github'
# Omniauth Google provider
gem 'omniauth-google-oauth2'
# Provides configuration when using multiple Omniauth providers
gem 'domp'
# # gem 'pg', '~> 0.20.0' <---- Moved down due to Windows issues
gem 'materialize-sass'

# # # FOR USE ON WINDOWS  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
if RbConfig::CONFIG['host_os'] == 'mingw32'
  gem 'pg', '~> 0.21.0'
  gem 'tzinfo-data'
  gem 'bcrypt', git: 'https://github.com/codahale/bcrypt-ruby.git', require: 'bcrypt'
else
  # PostgreSQL adapter gem
  gem 'pg', '~> 0.20.0'     # <-------- To be used on non-Windows systems
end
# # # FOR USE ON WINDOWS  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

gem 'puma'

gem "recaptcha", require: "recaptcha/rails"
# require 'rbconfig'
# gem 'wdm', '>= 0.1.0' if RbConfig::CONFIG['target_os'] =~ /mswin|mingw|cygwin/i

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Opens sent mails on browser
  gem 'letter_opener'
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end