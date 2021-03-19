source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.0'

gem 'rails', '~> 6.0.3', '>= 6.0.3.4'

gem 'devise'
gem 'devise-i18n'
gem 'rails-i18n'
gem 'jquery-rails'
gem 'carrierwave'
gem 'rmagick'
gem 'fog-aws'
gem 'pundit', '~> 2.1'
gem 'resque', '~> 2.0.0'
gem 'uglifier'
# gem 'omniauth'
# gem 'omniauth-facebook'
# gem 'omniauth-vkontakte'
gem 'puma', '~> 4.1'
gem 'sass-rails', '>= 6'
gem 'webpacker', '~> 4.0'
gem 'bootsnap', '>= 1.4.2', require: false
gem "mailjet"

group :production do
  gem 'pg'
end

group :development, :test do
  gem 'byebug'
  gem 'rspec-rails', '~> 3.4'
  gem 'factory_bot_rails'
  gem 'shoulda-matchers'
end

group :development do
  gem 'sqlite3'
  gem 'listen'
  gem 'letter_opener'
  gem 'capistrano', '~> 3.11.0'
  gem 'capistrano-rails', '~> 1.3.0'
  gem 'capistrano-passenger', '~> 0.2'
  gem 'capistrano-rbenv', '~> 2.1'
  gem 'capistrano-bundler', '~> 1.4.0'
  gem 'capistrano-resque', '~> 0.2.3', require: false
end

group :test do
  gem 'capybara'
  gem 'launchy'
end
