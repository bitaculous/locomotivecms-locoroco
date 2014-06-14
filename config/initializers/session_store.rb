# Be sure to restart your server when you modify this file.

Bitaculous::Locoroco::Application.configure do
  config.session_store :cookie_store, key: ENV['COOKIE_STORE_KEY']
end