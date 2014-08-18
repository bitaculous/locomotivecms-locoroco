# Lock configuration for Capistrano 3.2.1
lock '3.2.1'

set :domain, 'bitaculous.com'
set :application, 'locoroco'

set :linked_dirs, %w[log public/system public/sites tmp/cache tmp/pids tmp/sockets]

set :linked_files, %W[config/application.yml config/environments/#{fetch(:environment)}.rb config/unicorn/#{fetch(:environment)}.rb]

set :scm, :git
set :repo_url, 'https://github.com/bitaculous/locoroco.git'
ask :branch, proc { `git rev-parse --abbrev-ref HEAD`.chomp }
set :keep_releases, 5

# set :rvm_ruby_string, 'ruby-2.1.2-github@bitaculous-locoroco'
# set :rvm_type, :system
# set :rvm_path, '/usr/local/rvm'

set :bundle_flags, '--deployment --quiet'
set :bundle_without, 'development test deployment misc'

set :pty, true

# Set formatter (`:black_hole`, `:dot`, `:pretty` or `:simple_text`)
set :format, :pretty

# Set log level (`:debug`, `:error` or `:info`)
set :log_level, :info

after 'deploy:publishing', 'deploy:restart'
namespace :deploy do
  task :restart do
    invoke 'unicorn:restart'
  end
end