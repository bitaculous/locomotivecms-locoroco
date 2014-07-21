require File.expand_path '../boot', __FILE__

# Pick the frameworks you want:
# require 'active_record/railtie'
require 'action_controller/railtie'
require 'action_mailer/railtie'
# require 'active_resource/railtie'
require 'sprockets/railtie'
# require 'rails/test_unit/railtie'

if defined?(Bundler)
  # If you precompile assets before deploying to production, use this line.
  Bundler.require(*Rails.groups(assets: %w[development test]))
  # If you want your assets lazily compiled in production, use this line.
  # Bundler.require(:default, :assets, Rails.env)
end

module Bitaculous
  module Locoroco
    class Application < Rails::Application
      # Settings in `config/environments/*` take precedence over those specified here. Application configuration should
      # go into files in `config/initializers`, all *.rb files in that directory are automatically loaded.

      # Custom directories with classes and modules you want to be autoloadable.
      # config.autoload_paths += %W[#{config.root}/extras]

      # Only load the plugins named here, in the order given (default is alphabetical). `:all` can be used as a
      # placeholder for all plugins not explicitly named.
      # config.plugins = [:exception_notification, :ssl_requirement, :all]

      # Set `Time.zone` default to a specified zone if `ENV['TIMEZONE']` is available.
      config.time_zone = ENV['TIMEZONE'] if ENV['TIMEZONE']

      # Enable escaping HTML in JSON.
      config.active_support.escape_html_entities_in_json = true

      # === Middlewares ===

      config.middleware.use Rack::Cors do
        allow do
          origins '*'

          resource '*', headers: :any, methods: [:post]
        end
      end

      # === i18n ===

      # Set available locales.
      # config.i18n.available_locales = %i[de en es ru tr]

      # Configure default locale.
      # config.i18n.default_locale = :de

      # Load locale files in nested dictionaries.
      # config.i18n.load_path += Dir[Rails.root.join('config', 'locales', '**', '*.{rb,yml}')]

      # Enable locale fallbacks for I18n (makes lookups for any locale fall back to the I18n.default_locale when a
      # translation can not be found).
      # config.i18n.fallbacks = true

      # === Assets ===

      # Enable the asset pipeline.
      config.assets.enabled = true

      # Precompile additional assets (`application.js`, `application.css` and all non-JS/CSS are already added).
      # config.assets.precompile += %w[
      #   foo.js
      #   bar.css
      # ]

      # Version of your assets, change this if you want to expire all your assets.
      config.assets.version = '1.0'

      # === Logging ===

      # Configure sensitive parameters which will be filtered from the log file.
      config.filter_parameters += [:password]
    end
  end
end