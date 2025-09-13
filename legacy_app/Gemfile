# FROM CHATGPT

# Gemfile

# source 'https://rubygems.org'

# # Rails core
# gem 'rails', '~> 5.2.9'

# # Use sqlite3 for dev/test (or change to postgresql if needed)
# gem 'sqlite3', '~> 1.4'

# # Use Puma as the app server
# gem 'puma', '~> 3.12'

# # Modern Nokogiri compatible with M1/M2
# gem 'nokogiri', '>= 1.12.5'

# # ActiveStorage built-in, no separate gem needed

# # Use SCSS for stylesheets
# gem 'sass-rails', '~> 5.0'

# # Turbolinks and UJS
# gem 'turbolinks', '~> 5'
# gem 'jquery-rails'

# # Forms
# gem 'simple_form', '~> 4.1'

# # Authentication example (if used)
# # gem 'devise'

# # Use redis if you have caching or ActionCable
# # gem 'redis', '~> 4.0'

# # Development/test gems
# group :development, :test do
#   gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
# end

# group :development do
#   gem 'web-console', '>= 3.3.0'
#   gem 'listen', '~> 3.0.5'
#   gem 'spring'
#   gem 'spring-watcher-listen', '~> 2.0.0'
# end

# group :test do
#   gem 'capybara', '>= 2.15'
#   gem 'selenium-webdriver'
#   gem 'webdrivers'
# end



# EVERYTHING BELOW IS OLD

source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

# Use paperclip for image upload
# gem 'paperclip', '~> 6.1.0'
# Use mimemagic for paperclip content type validation
# Using a later version of mimemagic like this hopefully still works with paperclip 5.0.0
# gem 'mimemagic', '~> 0.4.3'
# Use hirb for CLI table
gem 'hirb'
gem 'rails', '~> 5.2.8.1'
gem 'nokogiri', '>= 1.12.5'
gem 'sqlite3', '~> 1.4'

# gem 'pg', '~> 0.18'
# Use Puma as the app server
gem 'puma', '~> 3.7'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

gem 'rails_12factor', group: :production

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

ruby '>= 2.4.1'
