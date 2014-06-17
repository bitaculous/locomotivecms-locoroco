#!/usr/bin/env bundle

source 'https://rubygems.org'

group :default do
  group :rails do
    # gem 'rails', '~> 3.2.18'

    gem 'rails', github: 'rails/rails', branch: '3-2-stable'
  end

  group :locomotive_cms do
    gem 'locomotive_cms', '~> 2.5.2'

    # gem 'locomotive_cms', github: 'locomotivecms/engine', branch: 'master', require: 'locomotive/engine'
  end

  group :rack do
    gem 'unicorn', '~> 4.8.3'
  end

  group :management do
    gem 'foreman', '~> 0.71.0'
  end

  group :configuration do
    # gem 'figaro', '~> 0.7.0'

    gem 'figaro', github: 'laserlemon/figaro'
  end

  group :templating do
    gem 'haml-rails', '~> 0.4'
  end
end

group :development do
  gem 'meta_request', '~> 0.3.0'

  gem 'better_errors', '~> 1.1.0'

  group :better_errors do
    gem 'binding_of_caller', '~> 0.7.2'
  end

  group :guard do
    gem 'guard-rspec', '~> 4.2.10'
  end
end

group :test do
  gem 'nyan-cat-formatter', '~> 0.9.0'
end

group :development, :test do
  gem 'spring', '~> 1.1.3'

  gem 'rspec-rails', '~> 3.0.1'
end

group :assets do
  group :javascripts do
    gem 'coffee-rails', '~> 3.2.2'

    gem 'uglifier', '~> 2.5.1'

    gem 'therubyracer', '~> 0.12.1', platforms: :ruby
  end

  group :stylesheets do
    gem 'sass-rails', '~> 3.2.6'

    gem 'compass-rails', '~> 1.1.7'
  end

  # group :sprockets do
  #   gem 'turbo-sprockets-rails3', '~> 0.3.11'
  # end
end

group :deployment do
  gem 'capistrano',          '~> 3.2.1'
  gem 'capistrano-rvm',      '~> 0.1.1', require: false
  gem 'capistrano-bundler',  '~> 1.1.2', require: false
  gem 'capistrano-rails',    '~> 1.1.1', require: false
  gem 'capistrano3-unicorn', '~> 0.1.1', require: false
end

group :misc do
  group :osx do
    gem 'growl', '~> 1.0.3', require: RUBY_PLATFORM.include?('darwin') && 'growl'

    gem 'rb-fsevent', '~> 0.9.4', require: RUBY_PLATFORM.include?('darwin') && 'rb-fsevent'
  end
end