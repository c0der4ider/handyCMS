source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.1'

gem 'rails', '~> 5.2.2'
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 3.11'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'bootsnap', '>= 1.1.0', require: false
gem 'slim-rails'
gem 'pundit'
gem 'devise'
gem 'rolify'
gem 'ancestry'

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'dotenv-rails'
end

group :development do
  gem "annotate", ">= 2.5.0"
  gem "awesome_print"
  gem "better_errors"
  gem "binding_of_caller"
  gem "brakeman", require: false
  gem "bundler-audit", ">= 0.5.0", require: false
  gem "guard", ">= 2.2.2", require: false
  gem "guard-livereload", require: false
  gem "guard-minitest", require: false
  gem "letter_opener"
  gem "listen", ">= 3.0.5"
  gem "overcommit", ">= 0.37.0", require: false
  gem "rack-livereload"
  gem "rubocop", ">= 0.58.0", require: false
  gem "simplecov", require: false
  gem "spring"
  gem "sshkit", "~> 1.16", require: false
  gem "spring-watcher-listen", "~> 2.0.0"
  gem "terminal-notifier", require: false
  gem "terminal-notifier-guard", require: false
  gem "xray-rails", ">= 0.1.18"
  gem "better_errors"
end

group :test do
  gem "capybara", ">= 2.15"
  gem "chromedriver-helper"
  gem "launchy"
  gem "minitest-ci", ">= 3.3.0", require: false
  gem "mocha", ">= 1.4.0"
  gem "selenium-webdriver"
  gem "shoulda-context"
  gem "shoulda-matchers", ">= 3.0.1"
end
