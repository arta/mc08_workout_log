source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


gem 'rails', '~> 5.0.1'
gem 'sqlite3'
gem 'puma', '~> 3.0'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'jquery-rails'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platform: :mri
  # 1-11-17:
  gem 'better_errors', '~> 2.1', '>= 2.1.1'
  gem 'binding_of_caller', '~> 0.7.2'
  gem 'awesome_print', '~> 1.7'
  gem 'meta_request', '~> 0.4.0'
end
group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
# 1-11-17:
# gem 'thor', '0.19.1' # temporary fix http://stackoverflow.com/a/41035588/247626
gem 'simple_form', '~> 3.4'
gem 'client_side_validations',
  github: 'DavyJonesLocker/client_side_validations',
  branch: 'rails5'
gem 'client_side_validations-simple_form',
  github: 'DavyJonesLocker/client_side_validations-simple_form',
  branch: 'rails5'
gem 'bootstrap-sass', '~> 3.3', '>= 3.3.7'
gem 'haml-rails', '~> 0.9.0'
