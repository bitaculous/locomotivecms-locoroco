#!/usr/bin/env bundle

source 'https://rubygems.org'

group :default do
  # === Ruby on Rails ===

  gem 'rails', '~> 3.2.21'
  # gem 'rails', github: 'rails/rails', branch: '3-2-stable'

  # === LocomotiveCMS ===

  gem 'locomotive_cms', '~> 2.5.6', require: 'locomotive/engine'
  # gem 'locomotive_cms', github: 'locomotivecms/engine', branch: 'master', require: 'locomotive/engine'
  # gem 'locomotive_cms', github: 'locomotivecms/engine', branch: 'v2.5.x', require: 'locomotive/engine'

  # === Rack ===

  gem 'unicorn', '~> 4.8.3', require: false

  # === Mongoid  ===

  gem 'bson_ext', '~> 1.11.1'

  # === Configuration ===

  gem 'figaro', '~> 1.0.0'

  # === Templating ===

  gem 'haml-rails', '~> 0.4'

  # === Profiling ===

  gem 'gctools', '~> 0.2.3', require: false, platform: :mri_21

  # gem 'rbtrace', '~> 0.4.4', require: false, platform: :mri

  # gem 'stackprof', '~> 0.2.7', require: false, platform: :mri_21

  # gem 'memory_profiler', '~> 0.0.4', require: false, platform: :mri_21
end

group :development, :test do
  # === RSpec ===

  gem 'rspec-rails', '~> 3.1.0'

  # === Preloader ===

  gem 'spring', '~> 1.2.0', require: false

  gem 'spring-commands-rspec', '~> 1.0.4', require: false
end

group :development do
  # === Guard ===

  gem 'guard-rspec', '~> 4.5.0', require: false

  # === Ooops! ===

  gem 'better_errors', '~> 2.1.0', require: false

  gem 'binding_of_caller', '~> 0.7.2', require: false
end

group :test do
  # === Formatter ===

  gem 'nyan-cat-formatter', '~> 0.11', require: false
end

group :assets do
  # === Cascading Style Sheets ===

  gem 'sass-rails', '~> 3.2.6'

  gem 'compass-rails', '~> 2.0.3'

  # === JavaScript ===

  gem 'coffee-rails', '~> 3.2.2'

  gem 'uglifier', '~> 2.6.1'

  gem 'therubyracer', '~> 0.12.1', require: RUBY_PLATFORM.include?('linux') && 'v8'

  # === Sprockets ===

  gem 'turbo-sprockets-rails3', '~> 0.3.14'
end

group :deployment do
  # === Capistrano ===

  gem 'capistrano', '~> 3.3.5', require: false

  gem 'capistrano-rvm', '~> 0.1.2', require: false

  gem 'capistrano-bundler', '~> 1.1.3', require: false

  gem 'capistrano-rails', '~> 1.1.2', require: false

  gem 'capistrano3-unicorn', '~> 0.2.1', require: false
end

group :misc do
  # === OS X ===

  gem 'growl', '~> 1.0.3', require: RUBY_PLATFORM.include?('darwin') && 'growl'

  gem 'rb-fsevent', '~> 0.9.4', require: RUBY_PLATFORM.include?('darwin') && 'rb-fsevent'
end