Bitaculous::Locoroco::Application.configure do
  config.middleware.use Rack::Cors do
    allow do
      origins '*'

      resource '/entry_submissions/*', headers: :any, methods: [:get, :post, :options]
    end
  end
end