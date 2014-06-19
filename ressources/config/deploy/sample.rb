server 'foo', user: 'bar', roles: %w{web app db}

set :deploy_to, "/var/www/#{fetch(:domain)}/#{fetch(:application)}"

set :linked_files, %w{config/application.yml config/environments/<stage>.rb config/unicorn/<stage>.rb}

set :ssh_options, {
  keys: '<key path>',
  auth_methods: %w(publickey),
  forward_agent: false
}