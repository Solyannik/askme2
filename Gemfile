source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.0'

gem 'uglifier', '>=1.3.0'
gem 'rails', '~> 6.0.3', '>= 6.0.3.4'
gem 'twitter-bootstrap-rails'
gem 'puma', '~> 4.1'
gem 'webpacker', '~> 4.0'
gem 'carrierwave'
gem 'rmagick'
gem 'devise'
gem 'devise-i18n'
gem 'rails-i18n'
gem 'fog-aws'

group :development, :test do
  gem 'sqlite3', '~> 1.4'
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'listen'
end

group :production do
  gem 'pg'
end
