#!/usr/bin/env rackup

# This file is used by Rack-based servers to start the application.

require 'rubygems'
require 'bundler/setup'

require File.expand_path '../config/environment', __FILE__

if defined?(Unicorn::HttpRequest)
  require 'gctools/oobgc'

  use GC::OOB::UnicornMiddleware
end

run LocomotiveCMS::Locoroco::Application