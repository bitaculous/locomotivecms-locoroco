server '<SERVER>', user: '<USER>', roles: %w[web app db]

set :environment, '<ENVIRONMENT>'
set :rails_env, fetch(:environment)

set :linked_files, %W[config/application.yml config/environments/#{fetch(:environment)}.rb config/unicorn/#{fetch(:environment)}.rb]

set :deploy_to, "/var/www/#{fetch(:domain)}/#{fetch(:application)}"

set :ssh_options, {
  keys: '<IDENTITY_FILE>',
  auth_methods: %w[publickey],
  forward_agent: false
}