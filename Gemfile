source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '~> 5.1.5'

gem 'coffee-rails', '~> 4.2'
gem 'chartkick'
gem 'jbuilder', '~> 2.5'
gem 'lodash-rails'
gem 'pg'
gem 'puma', '~> 3.7'
gem 'rest-client'
gem 'sass-rails', '~> 5.0'
gem 'sidekiq'
gem 'slim-rails'
gem 'turbolinks', '~> 5'
gem 'uglifier', '>= 1.3.0'

group :development, :test do
  gem 'capybara', '~> 2.13'
  gem 'selenium-webdriver'
  gem 'rspec-rails', '~> 3.7'
  gem 'pry-rails'
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'rack-mini-profiler'
  gem 'brakeman', :require => false
  gem 'rubocop'
end
