Bitaculous::Locoroco::Application.configure do
  config.middleware.use Rack::Cors do
    allow do
      origins 'sneak.bitaculous.com'

      resource '/entry_submissions/*', headers: :any, methods: [:post]
    end
  end
end