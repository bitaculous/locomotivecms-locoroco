Bitaculous::Locoroco::Application.configure do
  config.middleware.use Rack::Cors do
    allow do
      origins '*'

      resource '*', headers: :any, methods: [:post]
    end
  end
end