#!/usr/bin/env rackup

# This file is used by Rack-based servers to start the application.

require 'rubygems'
require 'bundler/setup'

require File.expand_path '../config/environment', __FILE__

run Bitaculous::Locoroco::Application