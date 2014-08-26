Dragonfly.app.configure do
  plugin :imagemagick,
         convert_command: `which convert`.strip.presence || '/usr/local/bin/convert',
         identify_command: `which identify`.strip.presence || '/usr/local/bin/identify'

  datastore :file,
            root_path: Rails.root.join('public/system/dragonfly', Rails.env),
            server_root: Rails.root.join('public')

  secret ENV['DRAGONFLY_SECRET']

  url_format '/images/dynamic/:job/:basename.:ext'

  fetch_file_whitelist /public/

  fetch_url_whitelist /.+/
end

Dragonfly.logger = Rails.logger

Rails.application.middleware.use Dragonfly::Middleware