ruby '2.4.1'

source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'jb'
gem 'rails', '~> 5.1.3'
gem 'omniauth'
gem 'omniauth-google-oauth2'
gem 'pg', '~> 0.18'
gem 'puma', '~> 3.7'
gem 'slim-rails'
gem 'turbolinks', '~> 5'
gem 'uglifier', '>= 1.3.0'
# TODO: update webpacker 2.0 or drop webpacker
gem 'webpacker', '1.2'

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :test do
  gem 'capybara', '~> 2.13.0'
  gem 'poltergeist'
  gem 'minitest-sub_test_case'
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end
