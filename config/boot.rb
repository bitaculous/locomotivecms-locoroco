ENV['BUNDLE_GEMFILE'] ||= File.expand_path '../../Gemfile', __FILE__

 # Set up gems listed in the Gemfile.
require 'bundler/setup' if File.exists? ENV['BUNDLE_GEMFILE']