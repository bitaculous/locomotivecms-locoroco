# Load DSL and setup up stages
require 'capistrano/setup'

# Include default deployment tasks
require 'capistrano/deploy'

# Include tasks for RVM
require 'capistrano/rvm'

# Include tasks for Bundler
require 'capistrano/bundler'

# Include tasks for Rails
require 'capistrano/rails/assets'
# require 'capistrano/rails/migrations'

# Include tasks for Unicorn
require 'capistrano3/unicorn'

# Loads custom tasks from `lib/capistrano/tasks`
Dir.glob('lib/capistrano/tasks/*.rake').each { |task| import task }