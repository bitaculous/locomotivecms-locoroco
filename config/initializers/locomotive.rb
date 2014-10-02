Locomotive.configure do |config|
  # A single LocomotiveCMS instance can serve one single site or many. If you want to run many different websites,
  # you will have to specify your own domain name (e.g. `example.com`).
  config.multi_sites do |multi_sites|
    # Each new website you add will have a default entry based on a subdomain and the `multi_site_domain` value (e.g.
    # `foo.bitaculous.com`).
    multi_sites.domain = 'bitaculous.com'

    # Define the reserved subdomains.
    multi_sites.reserved_subdomains = %w[locoroco]
  end

  # Set default locale (`bg`, `cs`, `de`, `en`, `es`, `et`, `fr`, `it`, `ja`, `nb`, `nl`, `pl`, `pt-BR`, `pt`, `ru`,
  # `sk`, `sr` or `zh-CN`are supported)
  config.default_locale = :en

  # Available locales suggested to “localize“ a site. You will have to pick up at least one among that list:
  # `bg`, `cs`, `de`, `en`, `es`, `et`, `fr`, `it`, `ja`, `nb`, `nl`, `pl`, `pt-BR`, `pt`, `ru`, `sk`, `sr` or `zh-CN`.
  config.site_locales = %w[en de]

  # Force all access to the back-office over SSL in production.
  # config.enable_admin_ssl = Rails.env.production?

  # “Public” forms can be protected from Cross-Site Request Forgery (CSRF) attacks. By default, that protection is
  # disabled in order to keep backwards compatibility with the existing public forms. Note: we strongly recommend to
  # enable it. See the documentation about the `csrf_param` liquid tag.
  config.csrf_protection = true

  # Allow applications using the engine to add their own Liquid drops, variables and similar, available in Liquid
  # templates, extending the assigns used while rendering.
  # config.context_assign_extensions = {}

  # Add extra classes other than the defined content types among a site which will potentially used by templatized pages.
  # config.models_for_templatization = %w[Product]

  # Add the checksum of a theme asset at the end of its path to allow public caching. By default, it's disabled.
  config.theme_assets_checksum = true

  # Enable serving of assets from an asset server.
  # config.asset_host = 'https://locoroco-assets.bitaculous.com'
  # config.asset_host = -> (request, site) {
  #   'https://locoroco-assets%d.bitaculous.com' % (request.hash % 4)
  # }

  # Rack-cache settings, mainly used for the inline resizing image module.
  #
  # The default options are:
  #
  # config.rack_cache = {
  #   verbose:     true,
  #   metastore:   URI.encode("file:#{Rails.root}/tmp/dragonfly/cache/meta"), # URI encoded in case of spaces
  #   entitystore: URI.encode("file:#{Rails.root}/tmp/dragonfly/cache/body")
  # }
  #
  # If you do want to disable it for good, just use the following syntax:
  #
  # config.rack_cache = false
  #
  # Note: by default, `rack/cache` is disabled on the Heroku platform.

  # Configure the email address which will be shown in the `DeviseMailer`, `NotificationMailer`, etc. If you do not put
  # the domain name in the email, LocomotiveCMS will take the default domain name depending on your deployment target
  # (server, Heroku, Bushido, etc.).
  config.mailer_sender = 'support@bitaculous.com'

  # Tell if logs are enabled, useful for debug purpose.
  config.enable_logs = true
end

Locomotive::ThemeAssetUploader.class_eval do
  def extension_white_list
    %w[css eot flv gif htc ico jpeg jpg js otf pdf png psd svg swf ttf woff woff2]
  end
end