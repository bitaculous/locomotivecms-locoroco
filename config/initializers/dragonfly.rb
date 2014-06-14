Dragonfly.app.configure do
  plugin :imagemagick

  protect_from_dos_attacks true

  secret ENV['DRAGONFLY_SECRET']

  url_format '/media/:job/:name'

  datastore :file, root_path: Rails.root.join('public/system/dragonfly', Rails.env), server_root: Rails.root.join('public')
end

Rails.application.middleware.use Dragonfly::Middleware

Dragonfly.logger = Rails.logger