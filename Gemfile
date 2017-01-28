source 'https://rubygems.org'
ruby '2.3.1'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'active_model_serializers', '~> 0.10.4'
gem 'oj', '~> 2.18', '>= 2.18.1'
gem 'rails', '~> 5.0.1'
gem 'pg', '~> 0.19.0'
gem 'puma', '~> 3.0'
gem 'rest-client', '~> 2.0'

group :development, :test do
  gem 'better_errors'
  gem 'byebug', platform: :mri
  gem 'pry-rails'
  gem 'rspec-rails', '~> 3.5', '>= 3.5.2'
end

group :development do
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end