ENV['RAILS_ENV'] ||= 'test'

require 'spec_helper'

# Load the Rails stack
require File.expand_path '../../config/environment', __FILE__

require 'rspec/rails'

# Requires shared examples in `spec/shared` and its subdirectories.
Dir[Rails.root.join('spec/shared/**/*.rb')].each { |file| require file }

# Requires supporting ruby files with custom matchers and macros, etc. in `spec/support` and its subdirectories. Files
# matching `spec/**/*_spec.rb` are run as spec files by default. This means that files in `spec/support` that end in
# `_spec.rb` will both be required and run as specs, causing the specs to be run twice. It is recommended that you do
# not name files matching this glob to end with `_spec.rb`. You can configure this pattern with the `--pattern` option
# on the command line or in `~/.rspec`, `.rspec` or `.rspec-local`.
Dir[Rails.root.join('spec/support/**/*.rb')].each { |file| require file }

RSpec.configure do |config|
  # RSpec Rails can automatically mix in different behaviours to your tests based on their file location, for example
  # enabling you to call `get` and `post` in specs under `spec/controllers`.
  #
  # You can disable this behaviour by removing the line below, and instead explicitly tag your specs with their type.
  config.infer_spec_type_from_file_location!
end