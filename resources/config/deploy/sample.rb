server '<server>', user: '<user>', roles: %w{web app db}

set :environment, '<environment>'
set :rails_env, fetch(:environment)

set :deploy_to, "/var/www/#{fetch(:domain)}/#{fetch(:application)}"

set :linked_files, %w{config/application.yml config/environments/<stage>.rb config/unicorn/<stage>.rb}

set :ssh_options, {
  keys: '<identity_file>',
  auth_methods: %w(publickey),
  forward_agent: false
}