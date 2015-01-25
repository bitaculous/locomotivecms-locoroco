LocomotiveCMS::Locoroco::Application.configure do
  # Settings specified here will take precedence over those in `config/application.rb`.

  # Enable threaded mode.
  config.threadsafe!

  # Code is not reloaded between requests.
  config.cache_classes = true

  # Enable dependency loading for rake tasks.
  config.dependency_loading = true if $rails_rake_task

  # Full error reports are disabled and caching is turned on.
  config.consider_all_requests_local       = false
  config.action_controller.perform_caching = true

  # Send deprecation notices to registered listeners.
  config.active_support.deprecation = :notify

  # === Security ===

  # Force all access to the app over SSL, use Strict-Transport-Security and use secure cookies.
  # config.force_ssl = true

  # === Caching ===

  # Use a different cache store.
  # config.cache_store = :mem_cache_store

  # === Assets ===

  # Compress assets.
  config.assets.compress = true

  # Generate digests for assets URLs.
  config.assets.digest = true

  # Don't fallback to assets pipeline if a precompiled asset is missed.
  config.assets.compile = false

  # Disable Rails's static asset server (Apache or Nginx will already do this).
  config.serve_static_assets = false

  # Enable serving of assets from asset server(s), distributes asset requests among the corresponding four hosts
  # `locoroco.assets0.locomotivecms.com`, `locoroco.assets1.locomotivecms.com`, etc.
  # config.action_controller.asset_host = '//locoroco.assets%d.locomotivecms.com'

  # Specifies the header that your server uses for sending files.
  # config.action_dispatch.x_sendfile_header = 'X-Sendfile' # For Apache HTTP Server
  # config.action_dispatch.x_sendfile_header = 'X-Accel-Redirect' # For Nginx

  # Version of your assets, change this if you want to expire all your assets.
  config.assets.version = '1.0'

  # Defines the full path to be used for the asset precompiler's manifest file. Defaults to a randomly-generated filename
  # in the `config.assets.prefix` directory within the `public` folder.
  # config.assets.manifest = '<PATH_TO_MANIFEST>'

  # Make sure that asset modification times are updated properly before `assets:precompile`, so that the `clean_expired`
  # task knows which assets are safe to remove.
  config.assets.handle_expiration = true

  # Configure the expiry time.
  # config.assets.expire_after 2.weeks

  # === Logging ===

  # Use a different logger for distributed setups.
  # config.logger = ActiveSupport::TaggedLogging.new(SyslogLogger.new)

  # Set log level, use `:debug` to see everything in the log (default is `:info`).
  # config.log_level = :debug

  # Prepend all log lines with the following tags.
  # config.log_tags = [:subdomain, :uuid]

  # Set the logging destination(s).
  config.log_to = %w[file]

  # Show the logging configuration on STDOUT.
  config.show_log_configuration = false

  # === Misc ===

  # Ignore bad email addresses and do not raise email delivery errors. Set this to `true` and configure the email server
  # for immediate delivery to raise delivery errors.
  # config.action_mailer.raise_delivery_errors = false
end