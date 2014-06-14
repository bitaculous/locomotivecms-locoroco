ENV['RAILS_ENV'] ||= 'test'

# Load the Rails stack.
require File.expand_path('../../config/environment', __FILE__)

require 'rspec/rails'

# Requires shared examples in `spec/shared` and its subdirectories.
Dir[Rails.root.join('spec/shared/**/*.rb')].each { |file| require file }

# Requires supporting ruby files with custom matchers, macros, etc. in `spec/support` and its subdirectories.
Dir[Rails.root.join('spec/support/**/*.rb')].each { |file| require file }

RSpec.configure do |config|
  config.expect_with :rspec do |rspec|
    rspec.syntax = :expect # Disable the “should” and use the “expect” syntax
  end

  # Run specs in random order to surface order dependencies. If you find an order dependency and want to debug it, you
  # can fix the order by providing the seed, which is printed after each run.
  config.order = 'random'

  # Raise errors instead of warnings for deprecations.
  config.raise_errors_for_deprecations!
end