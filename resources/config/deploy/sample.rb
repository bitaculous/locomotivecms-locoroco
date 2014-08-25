server '<SERVER>', user: '<USER>', roles: %w[web app db]

set :environment, '<ENVIRONMENT>'
set :rails_env, fetch(:environment)

set :deploy_to, "/var/www/#{fetch(:domain)}/#{fetch(:application)}"

set :ssh_options, {
  keys: '<IDENTITY_FILE>',
  auth_methods: %w[publickey],
  forward_agent: false
}