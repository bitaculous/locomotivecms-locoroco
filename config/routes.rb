Bitaculous::Locoroco::Application.routes.draw do
  # Mount LocomotiveCMS as engine
  mount Locomotive::Engine => '/locomotive', as: 'locomotive'

  match '/de/sitemap.xml' => 'locomotive/public/sitemaps#show', format: 'xml'
end