#!/usr/bin/env bundle

source 'https://rubygems.org'

group :default do
  group :rails do
    gem 'rails', '~> 3.2.19'
    # gem 'rails', github: 'rails/rails', branch: '3-2-stable'
  end

  group :locomotive_cms do
    gem 'locomotive_cms', '~> 2.5.5', require: 'locomotive/engine'
    # gem 'locomotive_cms', github: 'locomotivecms/engine', branch: 'master', require: 'locomotive/engine'
  end

  group :configuration do
    # gem 'figaro', '~> 0.7.0'
    gem 'figaro', github: 'laserlemon/figaro'
  end

  group :templating do
    gem 'haml-rails', '~> 0.4'
  end

  group :rack do
    gem 'unicorn', '~> 4.8.3', require: false
  end

  group :profiling do
    gem 'gctools', '~> 0.2.3', require: false, platform: :mri_21

    # gem 'rbtrace', '~> 0.4.4', require: false, platform: :mri

    # gem 'stackprof', '~> 0.2.7', require: false, platform: :mri_21

    # gem 'memory_profiler', '~> 0.0.4', require: false, platform: :mri_21
  end
end

group :development, :test do
  gem 'rspec-rails', '~> 3.0.1', require: false

  group :preloader do
    gem 'spring', '~> 1.1.3', require: false
    gem 'spring-commands-rspec', '~> 1.0.2', require: false
  end
end

group :development do
  group :guard do
    gem 'guard-rspec', '~> 4.3.1', require: false
  end

  group :oops do
    gem 'better_errors', '~> 2.0.0', require: false

    gem 'binding_of_caller', '~> 0.7.2', require: false
  end
end

group :test do
  group :formatter do
    gem 'nyan-cat-formatter', '~> 0.10.0', require: false
  end
end

group :assets do
  group :javascripts do
    gem 'coffee-rails', '~> 3.2.2'

    gem 'uglifier', '~> 2.5.3'

    gem 'therubyracer', '~> 0.12.1', require: RUBY_PLATFORM.include?('linux') && 'v8'
  end

  group :stylesheets do
    gem 'sass-rails', '~> 3.2.6'

    gem 'compass-rails', '~> 1.1.7'
  end
end

group :deployment do
  gem 'capistrano',          '~> 3.2.1', require: false
  gem 'capistrano-rvm',      '~> 0.1.1', require: false
  gem 'capistrano-bundler',  '~> 1.1.3', require: false
  gem 'capistrano-rails',    '~> 1.1.1', require: false
  gem 'capistrano3-unicorn', '~> 0.2.1', require: false
end

group :misc do
  group :osx do
    gem 'growl', '~> 1.0.3', require: RUBY_PLATFORM.include?('darwin') && 'growl'

    gem 'rb-fsevent', '~> 0.9.4', require: RUBY_PLATFORM.include?('darwin') && 'rb-fsevent'
  end
end