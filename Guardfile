#!/usr/bin/env guard

group :spec do
  guard :rspec, cmd: 'spring rspec', failed_mode: :focus, all_after_pass: true, all_on_start: true, notification: true do
    # Application
    watch(%r{^app/(.+)\.rb$})                          { |m| "spec/#{m[1]}_spec.rb" }

    # Controllers
    watch('app/controllers/application_controller.rb') { 'spec/controllers' }
    watch(%r{^app/controllers/(.+)_(controller)\.rb$}) { |m| ["spec/#{m[2]}s/#{m[1]}_#{m[2]}_spec.rb", "spec/acceptance/#{m[1]}_spec.rb", "spec/routing/#{m[1]}_routing_spec.rb"] }

    # Helpers
    watch(%r{^app/helpers/(.+)_(helper)\.rb$})         { ['spec/features', 'spec/helpers', 'spec/requests', 'spec/views'] }

    # Serializers
    watch(%r{^app/serializers/(.+)/.*\.rb$})           { ['spec/requests'] }

    # Views
    watch(%r{^app/views/(.+)/.*\.(erb|haml)$})         { |m| ["spec/features/#{m[1]}_spec.rb", "spec/requests/#{m[1]}_spec.rb", "spec/views/#{m[1]}_spec.rb"] }

    # Routes
    watch('config/routes.rb')                          { 'spec/routing' }

    # Library
    watch(%r{^lib/(.+)\.rb$})                          { |m| "spec/lib/#{m[1]}_spec.rb" }

    watch(%r{^spec/.+_spec\.rb$})

    # Fabricator definitions
    watch(%r{^spec/fabricators/(.+)\.rb$})             { 'spec' }

    # Shared examples
    watch(%r{^spec/shared/(.+)\.rb$})                  { 'spec' }

    # Supporting ruby files with custom matchers, macros, etc.
    watch(%r{^spec/support/(.+)\.rb$})                 { 'spec' }

    # Spec helper
    watch('spec/spec_helper.rb')                       { 'spec' }
  end
end